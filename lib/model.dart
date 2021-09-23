class Item{
  var dr_name,image,title,pa_name,date,time,status;
  Item({this.dr_name,this.date,this.image,this.pa_name,this.status,this.time,this.title});
}

class Info{
  var lists= [
    Item(
        dr_name: 'Dr. Mahmum',
        date: 'dd/mm/yy',
        image: 'images/doctor07.jpg',
        pa_name: 'mr. lkkd',
        status: 'Canceled',
        time: '21:22',
        title: 'Medicine'
    ),
    Item(
        dr_name: 'Dr. Rafat',
        date: 'dd/mm/yy',
        image: 'images/man.jpg',
        pa_name: 'mr. tushar',
        status: 'Upcoming',
        time: '21:22',
        title: 'Cardiologist'
    ),
    Item(
        dr_name: 'Dr. Monayeem',
        date: 'dd/mm/yy',
        image: 'images/doctor07.jpg',
        pa_name: 'mr. shakil',
        status: 'Completed',
        time: '21:22',
        title: 'Medicine'
    ),

    Item(
        dr_name: 'Dr. Rafat',
        date: 'dd/mm/yy',
        image: 'images/man.jpg',
        pa_name: 'mr. tushar',
        status: 'Upcoming',
        time: '21:22',
        title: 'Cardiologist'
    ),
    Item(
        dr_name: 'Dr. Monayeem',
        date: 'dd/mm/yy',
        image: 'images/doctor07.jpg',
        pa_name: 'mr. shakil',
        status: 'Completed',
        time: '21:22',
        title: 'Medicine'
    ),
  ];
}
