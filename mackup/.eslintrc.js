module.exports = {
    'env': {
        'es6': true,
        'node': true,
    },
    'extends': 'eslint:recommended',
    'globals': {
        'Atomics': 'readonly',
        'SharedArrayBuffer': 'readonly',
    },
    'parserOptions': {
        'ecmaFeatures': {
            'jsx': true,
        },
        'ecmaVersion': 2018,
        'sourceType': 'module',
    },
    'plugins': ['react'],
    'rules': {
    'no-unused-vars': 'off',
        'semi': ['error', 'never'],
        'quotes': [2, 'single'   ],
        'comma-dangle': ['error', 'always-multiline'],
        'object-curly-spacing': ['error', 'always'],
    },
}
