#include <iostream>
#include "parser.h"
#include "ast.h"
#include "lexer.h"
typedef struct interpreter_struct {
    parser_node* parser;
} interpreter_node;

class Interpreter{
public:
    Parser parse;

    interpreter_node* interpreter_create(char* arith_expr, unsigned int exp_len) {
        interpreter_node* interpreter = (interpreter_node*)malloc(sizeof(interpreter_node));
        lexer_node *lexer = parse.lex.lexer_create(arith_expr,exp_len);
        parser_node *parser = parse.parser_create(lexer);
        interpreter->parser = parser;
        return interpreter;
    }

    int interpreter_num(ast_node* node) {
        return node->data.num->value.int_val;
    }
    int interpreter_unary(interpreter_node* interpreter, ast_node* node) {
        if (node->data.unaryop->op->type == SUB)
            return (-1)*interpreter_move(interpreter, node->data.unaryop->expr);
        return 0;
    }

    int interpreter_binary(interpreter_node* interpreter, ast_node* node) {
        if (node->data.binop->op->type == ADD) {
            return interpreter_move(interpreter, node->data.binop->left) + interpreter_move(interpreter, node->data.binop->right);
        }
        else if (node->data.binop->op->type == SUB) {
            return interpreter_move(interpreter, node->data.binop->left) - interpreter_move(interpreter, node->data.binop->right);
        }
        else if (node->data.binop->op->type == MUL) {
            return interpreter_move(interpreter, node->data.binop->left) * interpreter_move(interpreter, node->data.binop->right);
        }
        else if (node->data.binop->op->type == DIV) {
            return interpreter_move(interpreter, node->data.binop->left) / interpreter_move(interpreter, node->data.binop->right);
        }
        else if (node->data.binop->op->type == MOD) {
            return interpreter_move(interpreter, node->data.binop->left) % interpreter_move(interpreter, node->data.binop->right);
        }
        return 0;
    }
    int interpreter_move(interpreter_node* interpreter, ast_node* node) {
        int val;
        if (node->type == number) {
            val = interpreter_num(node);
            parse.ast_n.ast_num_destroy(node);
        }

        else if (node->type == unary_op) {
            val = interpreter_unary(interpreter, node);
            parse.ast_u.ast_unary_destroy(node);
        }

        else if (node->type == binary_op) {
            val = interpreter_binary(interpreter, node);
            parse.ast_b.ast_binary_destroy(node);
        }
        return val;
    }

    int eval(interpreter_node* interpreter) {
        ast_node* tree = parse.parser_expr(interpreter->parser);
        return interpreter_move(interpreter, tree);
    }

    void interpreter_destroy(interpreter_node* interpreter) {
        free(interpreter);
    }
};

int main() {
    char input_str[150];
    fgets(input_str, sizeof(input_str), stdin);
    int len = strlen(input_str);
    char *temp=(char *)malloc(len);
    memcpy(temp, &input_str, (len - 1));
    Interpreter interpret;
    interpreter_node *interpreter = interpret.interpreter_create(temp, len);
    int result = interpret.eval(interpreter);
    printf("%d\n", result);
    interpret.interpreter_destroy(interpreter);
    return 0;
}
