" Vi 호환 모드 해제
set nocompatible

" 문법 강조 활성화
syntax on

" 파일 타입 플러그인 및 자동 들여쓰기 활성화
filetype plugin indent on

" 자동 들여쓰기 설정
set autoindent       " 이전 줄의 들여쓰기를 따라갑니다.
set smartindent      " C/C++ 같은 구조적 언어에 맞게 스마트하게 들여쓰기 합니다.
set cindent          " C 언어 스타일의 들여쓰기를 사용합니다.

" 탭과 공백 설정
set tabstop=4        " 탭을 4칸으로 설정합니다.
set shiftwidth=4     " 들여쓰기 시 4칸씩 이동합니다.
set expandtab        " 탭을 공백으로 변환합니다.

" 줄 번호 표시
set number           " 줄 번호를 표시합니다.

" 괄호 매칭 표시
set showmatch        " 커서 위치의 괄호에 대응하는 괄호를 강조합니다.

" 검색 설정
set hlsearch         " 검색 결과를 하이라이트합니다.
set incsearch        " 검색어 입력 시 즉시 검색합니다.
set ignorecase       " 검색 시 대소문자를 구분하지 않습니다.
set smartcase        " 검색어에 대문자가 포함되면 대소문자를 구분합니다.

" 백업 파일 생성 방지
set nobackup         " 백업 파일을 생성하지 않습니다.
set nowritebackup    " 쓰기 시 백업 파일을 생성하지 않습니다.
set noswapfile       " 스왑 파일을 생성하지 않습니다.

" 색상 설정
set t_Co=256         " 256색을 지원하도록 설정합니다.
colorscheme desert   " 원하는 색상 테마를 선택합니다.

" 파일 인코딩 설정
set encoding=utf-8
set fileencoding=utf-8


" Vundle 플러그인 관리 설정
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" 추천 플러그인 목록
Plugin 'preservim/nerdtree'         " 파일 탐색기
Plugin 'majutsushi/tagbar'          " 코드 구조 보기
Plugin 'vim-syntastic/syntastic'    " 문법 검사

call vundle#end()
filetype plugin indent on
