# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Plan.delete_all
Option.delete_all
PlanOption.delete_all

ActiveRecord::Base.connection.reset_pk_sequence!(Plan.table_name)
ActiveRecord::Base.connection.reset_pk_sequence!(Option.table_name)
ActiveRecord::Base.connection.reset_pk_sequence!(PlanOption.table_name)

Plan.create([
  {
    title: 'Новичок',
    price: 18000,
    img: 'head-cross'
  },
  {
    title: 'Профессионал',
    price: 25000,
    img: 'checkboard-graph'
  },
  {
    title: 'Geek',
    price: 32000,
    img: 'glasses'
  },
])

Option.create([
  {
    id: 1,
    title: '100 к знаниям Ruby on Rails'
  },
  {
    id: 2,
    title: '75 к знаниям Frontend'
  },
  {
    id: 3,
    title: '150 к знаниям Ruby on Rails'
  },
  {
    id: 4,
    title: '100 к знаниям Frontend'
  },
  {
    id: 5,
    title: '200 к знаниям Ruby on Rails'
  },
  {
    id: 6,
    title: '150 к знаниям Frontend'
  },
  {
    id: 7,
    title: 'Способность создать сайт с нуля'
  },
  {
    id: 8,
    title: 'Способность реализовать любую идею'
  },
  {
    id: 9,
    title: 'Способность монетизировать проект'
  },
  {
    id: 10,
    title: 'Персональная работа с преподавателем'
  },
  {
    id: 11,
    title: 'Сертефикат об окончании курсов'
  },
  {
    id: 12,
    title: 'Футболка программиста Ruby'
  },
  {
    id: 13,
    title: 'Рекомендация на hh.ru'
  },
  {
    id: 14,
    title: 'Online-резюме у нас на сайте'
  },
  {
    id: 15,
    title: 'Персональная помощь с реализацией идей'
  },
  {
    id: 16,
    title: 'Повышение навыков на hh.ru'
  },
  {
    id: 17,
    title: 'MacBook 2016 лучшему ученику месяца'
  },
])


Plan.first.options << Option.where(id: [1..2, 7..11])
Plan.second.options << Option.where(id: [3..4, 7..14])
Plan.last.options << Option.where(id: [5..6, 7..17])
