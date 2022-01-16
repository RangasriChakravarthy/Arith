//
// Created by Priyanka Dutta and Rangasri Chakravarthy.
//

#ifndef ARITH_PARSER_H
#define ARITH_PARSER_H
#include "ast.h"
#include "lexer.h"
typedef struct parser_struct {
    lexer_node* lexer;
    token_struct_node* curr_token;
} parser_node;

class Parser{
public:
    Ast_num ast_n;
    Ast_unary ast_u;
    Ast_binary ast_b;
    Lexer lex;

    parser_node* parser_create(lexer_node* lexer) {
        parser_node* parser = (parser_node*)malloc(sizeof(parser_node));
        parser->lexer = lexer;
        parser->curr_token = lex.lexer_nexttoken(parser->lexer);
        return parser;
    }

    token_struct_node* parser_eat(parser_node* parser, int type) {
        token_struct_node* dummy;
        if (parser->curr_token->type == type) {
            token_struct_node *prev = parser->curr_token;
            parser->curr_token = lex.lexer_nexttoken(parser->lexer);
            return prev;
        } else {
            parser_error();
            return dummy;
        }
    }

    ast_node* parser_factor(parser_node* parser) {
        ast_node* dummy_ast;
        token_struct_node* token = parser->curr_token;
        if (token->type == NUM) {
            parser_eat(parser, NUM);
            return ast_n.ast_num_create(token);
        }
        else if (token->type == SUB) {
            parser_eat(parser, SUB);
            return ast_u.ast_unary_create(token, parser_factor(parser));
        }
        return dummy_ast;
    }

    ast_node* parser_term(parser_node* parser) {
        token_struct_node* token;
        ast_node *node = parser_factor(parser);
        while (parser->curr_token->type == MUL || parser->curr_token->type == DIV || parser->curr_token->type == MOD) {
            token = parser->curr_token;
            if (token->type == MUL) {
                parser_eat(parser, MUL);
            }
            else if (token->type == DIV) {
                parser_eat(parser, DIV);
            }
            else if (token->type == MOD) {
                parser_eat(parser, MOD);
            }
            node = ast_b.ast_binary_create(node, token, parser_factor(parser));
        }
        return node;
    }

    ast_node* parser_expr(parser_node* parser) {
        token_struct_node *token;
        ast_node* node = parser_term(parser);
        while (parser->curr_token->type == ADD || parser->curr_token->type == SUB) {
            token = parser->curr_token;
            if (token->type == ADD) {
                parser_eat(parser, ADD);
            }
            else if (token->type == SUB) {
                parser_eat(parser, SUB);
            }
            node = ast_b.ast_binary_create(node, token, parser_term(parser));
        }

        return node;
    }
    void parser_error() {
        printf("Parser error: not a valid parser character\n");
        exit(1);
    }
};

#endif //ARITH_PARSER_H
