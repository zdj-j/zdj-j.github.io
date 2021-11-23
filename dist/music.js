const ap = new APlayer({
    container: document.getElementById('aplayer'),
    autoplay: true,
    theme: '#e9e9e9',
    loop: 'all',
    order: 'random',
    preload: 'auto',
    volume: 0.7,
    mutex: true,
    listFolded: true,
    listMaxHeight: 90,
    lrcType: 3,

    audio: [{
            name: '你不在故事里',
            artist: '傲七爷',
            url: '../music/你不在故事里.mp3',
            cover: 'http://p1.music.126.net/cDpUVHw1sukExBTi9wuw8w==/109951165347709557.jpg?param=300x300',
            lrc: '../music/lrc/你不在故事里-傲七爷.lrc'
        },
        {
            name: 'Light It Up',
            artist: 'Robin Hustin,TobiMorrow,Jex',
            url: '../music/Light It Up.mp3',
            cover: 'http://p1.music.126.net/Q3gxjRt7HkQik97Z67DAeg==/109951163571146846.jpg?param=300x300',
            lrc: '../music/lrc/Light It Up-Robin Hustin,TobiMorrow,Jex.lrc'
        },
        {
            name: 'unravel (acoustic version)',
            artist: 'TK from 凛として時雨',
            url: '../music/unravel (acoustic version).mp3',
            cover: 'http://p2.music.126.net/SrlTrE6u29df2QARLtY_bw==/109951165946311235.jpg?param=300x300',
            lrc: '../music/lrc/unravel (acoustic version)-TK from 凛として時雨.lrc'
        },
        {
            name: 'Running My Head',
            artist: 'Kevin91x',
            url: '../music/Running My Head.mp3',
            cover: 'http://p1.music.126.net/omaXwC_ooVvWTGKh1qyrWw==/528865144148726.jpg?param=300x300',
            lrc: '../music/lrc/Running My Head-Kevin91x.lrc'
        },
        {
            name: '飞鸟和蝉（任然-原唱)',
            artist: '解忧小咪',
            url: '../music/飞鸟和蝉（任然-原唱).mp3',
            cover: 'http://p2.music.126.net/BPZETt41MWQ5gNK7DX1JSw==/109951165528496488.jpg?param=300x300',
            lrc: '../music/lrc/飞鸟和蝉（任然-原唱）-解忧小咪.lrc'
        },
        {
            name: 'Nothing New',
            artist: 'Dropgun,Kaleena Zanders',
            url: '../music/Nothing New.mp3',
            cover: 'http://p1.music.126.net/DHn-3p76lm5mnskUPF34Aw==/18294773975126717.jpg?param=300x300',
            lrc: '../music/lrc/Nothing New-Dropgun,Kaleena Zanders.lrc'
        }

    ]
});