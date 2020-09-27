// 0.피라미드의 비밀
// 1.헨젤과 그레텔
// 2.TOWERING
// 3.GESTAPO
// 4.MONKEY HOUSE
// 5.장기밀매
// 6.장기밀매 파트2
// 7.딜리버
// 8.로미오포인트
// 9.폼페이최후의날
// 10.집행
// 11.카타콤
// 12.타이타닉
// 13.신데렐라
// 14.집착
// 15.좀비스쿨
// 16.피고인
// 17.제시의 시크릿
// 18.마션
// 19.더큐브
// 20.메이지
// 21.사라진천사들
// 22.마녀의꿈
// 23.장미의비밀
// 24,트레저헌터1우든펍의비밀
// 25.트레져헌터2빅토리아호의 침몰
// 26.트레저헌터3거미의둥지
// 27.트레저헌터4골든아이

const daejeonThema = [5,13,14,18,12,11];//완료
const jeonjuThema = [7,15,16,1,17,0,13,14];//완료
const incheonThema = [12,13,5,2,14]; //완료
const allThema = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,21,22,23,24,25,26,27]; //완료
const cheonhoThema = [19,20,6,21,22,23]; //완료
const daeguThema = [0,1,5,7,4,3,8,9,10]; //완료

const hongdaeThema = [0,1,2,3,4,5,7,8]; //완료
const suyuThema = [24,25,26,27,19,21,22,14]; //완료
const jamsilThema = [8,13,14,18,12,11];//완료




const themaes=[
    {
        img: "http://cubeescape.co.kr/theme/basic_room2/img/rain/room01.jpg",
        alt: "테마:피라미드의 비밀",
        contentsText: `
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>`,
        level: "3/5",
        title: "피라미드",
        type: "어드벤처",
    },
    {
        img: "http://cubeescape.co.kr/theme/basic_room2/img/rain/room04.jpg",
        alt: "테마:헨젤과 그레텔",
        contentsText: `
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>`,
        level: "4/5",
        title: "헨젤과 그레텔",
        type: "동화 어드벤처",
    },    
    {
        img: "http://cubeescape.co.kr/theme/basic_room2/img/rain/room06.jpg",
        alt: "테마: Towering",
        contentsText: `
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>`,
        level: "4/5",
        title: "Towering",
        type: "재난",
    },    
    {
        img: "http://cubeescape.co.kr/theme/basic_room2/img/rain/room05.jpg",
        alt: "테마:Gestapo",
        contentsText: `
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>`,
        level: "4/5",
        title: "Gestapo",
        type: "어드벤처",
    },    
    {
        img: "http://cubeescape.co.kr/theme/basic_room2/img/rain/room02.jpg",
        alt: "테마: Monkey House",
        contentsText: `
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>`,
        level: "3/5",
        title: "Monkey House",
        type: "호러/스릴러",
    },    
    {
        img: "http://cubeescape.co.kr/theme/basic_room2/img/rain/room03.jpg",
        alt: "테마:장기밀매",
        contentsText: `
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>`,
        level: "5/5",
        title: "장기밀매",
        type: "스릴러/19세미만불가",
    },    
    {
        img: "http://cheonho.cubeescape.co.kr/theme/basic_room2/img/rain/room21.jpg",
        alt: "테마:장기밀매 PART2",
        contentsText: `
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>`,
        level: "4/5",
        title: "장기밀매 PART2",
        type: "호러",
    },    
    {
        img: "http://cubeescape.co.kr/theme/basic_room2/img/rain/room07.jpg",
        alt: "테마:Deliver",
        contentsText: `
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>`,
        level: "4/5",
        title: "Deliver",
        type: "스릴러/19세미만불가",
    },    
    {
        img: "http://cubeescape.co.kr/theme/basic_room2/img/rain/room08.jpg",
        alt: "테마:RomeoPoint",
        contentsText: `
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>`,
        level: "4/5",
        title: "RomeoPoint",
        type: "스릴러",
    },    
    {
        img: "http://daegu.cubeescape.co.kr/theme/basic_room2/img/rain/room09.jpg",
        alt: "테마:폼페이최후의날",
        contentsText: `
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>`,
        level: "4/5",
        title: "폼페이최후의날",
        type: "어드벤처",
    },    
    {
        img: "http://daegu.cubeescape.co.kr/theme/basic_room2/img/rain/room10.jpg",
        alt: "테마:집행",
        contentsText: `
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>`,
        level: "4/5",
        title: "집행",
        type: "어드벤처",
    },    
    {
        img: "http://daegu.cubeescape.co.kr/theme/basic_room2/img/rain/room11.jpg",
        alt: "테마:카타콤",
        contentsText: `
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>`,
        level: "4/5",
        title: "카타콤",
        type: "어드벤처",
    },    
    {
        img: "http://incheon.cubeescape.co.kr/theme/basic_room2/img/rain/room14.jpg",
        alt: "테마:타이타닉",
        contentsText: `
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>`,
        level: "5/5",
        title: "타이타닉",
        type: "어드벤처",
    },      
    {
        img: "http://incheon.cubeescape.co.kr/theme/basic_room2/img/rain/room12.jpg",
        alt: "테마:신데렐라",
        contentsText: `
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>`,
        level: "5/5",
        title: "신데렐라",
        type: "동화/어드벤처",
    },    
    {
        img: "http://incheon.cubeescape.co.kr/theme/basic_room2/img/rain/room13.jpg",
        alt: "테마:집착",
        contentsText: `
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>`,
        level: "5/5",
        title: "집착",
        type: "추리/스릴러",
    },    
    {
        img: "http://junju.cubeescape.co.kr/theme/basic_room2/img/rain/room16.jpg",
        alt: "테마:좀비스쿨",
        contentsText: `
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>`,
        level: "5/5",
        title: "좀비스쿨",
        type: "어드벤처",
    },    
    {
        img: "http://junju.cubeescape.co.kr/theme/basic_room2/img/rain/room17.jpg",
        alt: "테마:피고인",
        contentsText: `
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>`,
        level: "4/5",
        title: "피고인",
        type: "추리/스릴러",
    },    
    {
        img: "http://junju.cubeescape.co.kr/theme/basic_room2/img/rain/room18.jpg",
        alt: "테마:제시의 시크릿",
        contentsText: `
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>`,
        level: "4/5",
        title: "제시의 시크릿",
        type: "섹시/19세미만불가",
    },    
    {
        img: "http://jamsil.cubeescape.co.kr/theme/basic_room2/img/rain/room15.jpg",
        alt: "테마:마션",
        contentsText: `
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>`,
        level: "5/5",
        title: "타이타닉",
        type: "추리/어드벤처",
    },    
    {
        img: "http://cheonho.cubeescape.co.kr/theme/basic_room2/img/rain/room19.jpg",
        alt: "테마:The Cube",
        contentsText: `
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>`,
        level: "5/5",
        title: "The Cube",
        type: "추리/스릴러",
    },    
    {
        img: "http://cheonho.cubeescape.co.kr/theme/basic_room2/img/rain/room20.jpg",
        alt: "테마:The Maze",
        contentsText: `
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>`,
        level: "4/5",
        title: "The Maze",
        type: "어드벤처/스릴러",
    },    
    {
        img: "http://cheonho.cubeescape.co.kr/theme/basic_room2/img/rain/room22.jpg",
        alt: "테마:사라진 천사들",
        contentsText: `
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>`,
        level: "3/5",
        title: "사라진 천사들",
        type: "추리/스릴러/호러",
    },    
    {
        img: "http://cheonho.cubeescape.co.kr/theme/basic_room2/img/rain/room23.jpg",
        alt: "테마:마녀의 꿈",
        contentsText: `
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>`,
        level: "4/5",
        title: "마녀의 꿈",
        type: "판타지/어드벤처",
    },    
    {
        img: "http://cheonho.cubeescape.co.kr/theme/basic_room2/img/rain/room24.jpg",
        alt: "테마:장미의 비밀",
        contentsText: `
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>`,
        level: "4/5",
        title: "장미의 비밀",
        type: "추리/스릴러",
    },    
    {
        img: "http://suyu.cubeescape.co.kr/theme/basic_room2/img/rain/sroom1.jpg",
        alt: "테마:Treasure Hunters(1):우든펍의 비밀",
        contentsText: `
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>`,
        level: "3/5",
        title: "Treasure Hunters(1):우든펍의 비밀",
        type: "추리/어드벤처",
    },    
    {
        img: "http://suyu.cubeescape.co.kr/theme/basic_room2/img/rain/sroom2.jpg",
        alt: "테마:Treasure Hunters(2):빅토리아호의 침몰",
        contentsText: `
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>`,
        level: "3/5",
        title: "Treasure Hunters(2):빅토리아호의 침몰",
        type: "추리/어드벤처",
    },    
    {
        img: "http://suyu.cubeescape.co.kr/theme/basic_room2/img/rain/sroom3.jpg",
        alt: "테마:Treasure Hunters(3):거미의 둥지",
        contentsText: `
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>`,
        level: "4/5",
        title: "Treasure Hunters(3):거미의 둥지",
        type: "스릴러/어드벤처",
    },    
    {
        img: "http://suyu.cubeescape.co.kr/theme/basic_room2/img/rain/sroom4.jpg",
        alt: "Treasure Hunters(4):골든 아이",
        contentsText: `
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>
        <p>설명칸입니다</p>`,
        level: "5/5",
        title: "Treasure Hunters(4):골든 아이",
        type: "판타지/어드벤처",
    },  
];
