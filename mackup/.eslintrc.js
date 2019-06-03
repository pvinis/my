module.exports = {
    env: {
        es6: true,
        node: true,
    },
    extends: [
        'eslint:recommended',
        'plugin:react/recommended',
    ],
    globals: {
        Atomics: 'readonly',
        SharedArrayBuffer: 'readonly',
    },
    parser: 'babel-eslint',
    parserOptions: {
        ecmaFeatures: {
            jsx: true,
        },
        ecmaVersion: 2018,
        sourceType: 'module',
    },
    plugins: ['react'],
    rules: {
        'no-unused-vars': 'off',
        semi: ['error', 'never'],
        quotes: ['error', 'single'],
        'comma-dangle': ['error', 'always-multiline'],
        'object-curly-spacing': ['error', 'always'],
        'key-spacing': ['error'],
        indent: ['error', 4],
        'no-console': 'off',
        'arrow-spacing': ['error'],
        'no-multi-spaces': ['error', { 'ignoreEOLComments': true }], // has exceptions too, if needed

        'react/jsx-indent': ['error', 4],
        'react/prop-types': 'off',
        'react/jsx-space-before-closing': 'error',
    },
}
