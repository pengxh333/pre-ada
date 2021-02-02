'''
Author: Tricia Peng
Date: 2021-01-21 12:00:56
LastEditTime: 2021-01-23 22:35:58
FilePath: /pre-ada/LearningNotes/test.py
Note: learning note from
https://pandas.pydata.org/pandas-docs/stable/getting_started/intro_tutorials/01_table_oriented.html#min-tut-01-tableoriented

'''
import pandas as pd
import numpy as np
# s = pd.Series([1, 3, 5, nan, 6, 8])
# print(s)

# dates = pd.date_range("20130102", periods=6)
# print(dates)

# d = {'num_legs': [4, 4, 2, 2],
#      'num_wings': [0, 0, 2, 2],
#      'class': ['mammal', 'mammal', 'mammal', 'bird'],
#      'animal': ['cat', 'dog', 'bat', 'penguin'],
#      'locomotion': ['walks', 'walks', 'flies', 'walks']}
# df = pd.DataFrame(data=d)
# df = df.set_index(['class', 'animal', 'locomotion'])
# print(df)
# print(df.xs('cat', level=1))  #red ???
# print(df.xs('dog', level=1))  #red ???
# print(df.xs(('bird', 'walks'), level=[0, 'locomotion']))  ##red ???
# print(df.xs('num_wings', axis=1))  #red ????

# print(df.isin([4, 'walks']))

# only compare the column "num_legs", all False for other column
# print(df.isin({'num_legs': [0, 2]}))


# df = pd.DataFrame({'num_legs': [2, 4], 'num_wings': [2, 0]},
#                   index=['eagle', 'cat'])
# print(df)
# other = pd.DataFrame({'num_legs': [8, 2], 'num_wings': [0, 2]},
#                      index=['spider', 'eagle'])
# print(other)
# print(df.isin(other))  # only same rows's content are True, other's False


numMax = int(input('please input  a maxnumber : '))


def flibsOne(numMax):
    c = [0]
    a, b = 0, 1
    while a < numMax:
        a, b = b, a + b
        c.append(a)
    c.remove(c[-1])
    print(c)


flibsOne(numMax)
