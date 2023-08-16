#Cada defmodule representa um exercicio feito, mesmo nao sendo uma boa pratica colocar varios modulos diferente agrupados seguidos um do outro, por serem
#exercicios simples achei a forma mais simples de fazer

defmodule Ex1 do
  # Faça uma função que recebe por parâmetro o raio de uma esfera e calcula o seu volume (v = 4/3.P .R3).

  def vol(r), do: (4.0/3.0) * :math.pi() * :math.pow(r, 3)
end


  defmodule Ex2 do
    # Escreva um procedimento que recebe as 3 notas de um aluno por parâmetro e uma letra.
    # Se a letra for A o procedimento calcula a média aritmética das notas do aluno, se for P,
    # a sua média ponderada (pesos: 5, 3 e 2) e se for H, a sua média harmônica.
    # A média calculada também deve retornar por parâmetro.

    def nota(n1, n2, n3, "A"), do: (n1+ n2+ n3) / 3
    def nota(n1, n2, n3, "P"), do: ((n1*5) + (n2*3) + (n3*2)) / (5+3+2)
    def nota(n1, n2, n3, "H"), do: 3/ ((1/n1) + (1/n2) + (1/n3))
    def nota(_, _, _, _), do: {:error, "invalid values"}
    #forma usando pattern matching de parametro da funcao



    def n(n1, n2, n3, type) do
      case type do
        "A" -> (n1+ n2+ n3) / 3
        "P" -> ((n1*5) + (n2*3) + (n3*2)) / (5+3+2)
        "H" -> 3/ ((1/n1) + (1/n2) + (1/n3))
        _ -> "invalid option"
      end
    end
  end
  #forma usando case validando valor digitado na variavel type



  defmodule Ex5 do
    #Faça uma função que recebe por parâmetro o tempo de duração de uma fábrica expressa em segundos
    #e retorna também por parâmetro esse tempo em horas, minutos e segundos.

    def tempo(t, "S"), do: IO.puts("#{t} segundos são equivalentes a #{(t/60)} minutos ou #{(t/60) /60} horas")
    def tempo(t, "M"), do: IO.puts("#{t} minutos são equivalentes a #{(t*60)} segundos ou #{(t/60)} horas")
    def tempo(t, "H"), do: IO.puts("#{t} horas são equivalentes a #{(t*60) *60} segundos ou #{(t*60)} minutos")
    def tempo(_t, _), do: {:error, "invalid value"}
  end


  defmodule Ex6 do
    #Faça um procedimento que recebe a idade de um nadador por parâmetro e retorna ,
    #também por parâmetro, a categoria desse nadador de acordo com a tabela abaixo:
    def cat(age) when age >= 1 and age <5, do: "invalid age"
    def cat(age) when age >= 5 and age <= 7, do: "infantil a"
    def cat(age) when age >= 8 and age <= 10, do: "infantil b"
    def cat(age) when age >= 11 and age <= 13, do: "juvenil a"
    def cat(age) when age >= 14 and age <= 17, do: "juvenil b"
    def cat(age) when age >= 18, do: "adulto"
  end


  defmodule Ex9 do
    #Faça uma função que recebe um valor inteiro e verifica se o valor é positivo ou negativo.
    #A função deve retornar um valor booleano.
    def norp(v) when v > 0, do: true
    def norp(v) when v < 0, do: false
  end


  defmodule Ex10 do
    require Integer
    # 10. Faça uma função que recebe um valor inteiro e verifica se o valor é par ou ímpar.
    # A função deve retornar um valor booleano.
    def paim(v) when Integer.is_even(v), do: true
    def paim(v) when Integer.is_odd(v), do: false
    def paim(_), do: nil
  end


  defmodule Ex11 do
    # Leia um vetor de 12 posições e em seguida ler também dois valores X e Y quaisquer correspondentes
    # a duas posições no vetor. Ao final seu programa deverá escrever a soma dos valores encontrados nas
    # respectivas posições X e Y.
    def valor(list, x, y) when length(list) == 12, do: Enum.at(list, x) + Enum.at(list, y)
    def valor(_, _, _), do: "error"
  end


  defmodule Ex1 do
    # Faça uma função que recebe por parâmetro o raio de uma esfera e calcula o seu volume (v = 4/3.P .R3).

    def vol(r), do: 4.0/3.0 * :math.pi() * :math.pow(r, 3)
    end


    defmodule Ex2 do
      # Escreva um procedimento que recebe as 3 notas de um aluno por parâmetro e uma letra.
      # Se a letra for A o procedimento calcula a média aritmética das notas do aluno, se for P,
      # a sua média ponderada (pesos: 5, 3 e 2) e se for H, a sua média harmônica.
      # A média calculada também deve retornar por parâmetro.

      def nota(n1, n2, n3, "A"), do: (n1+ n2+ n3) / 3
      def nota(n1, n2, n3, "P"), do: ((n1*5) + (n2*3) + (n3*2)) / (5+3+2)
      def nota(n1, n2, n3, "H"), do: 3/ ((1/n1) + (1/n2) + (1/n3))
      def nota(_, _, _, _), do: {:error, "invalid values"}

      def n(n1, n2, n3, l) when is_number(n1) and is_number(n2) and is_number(n3) and is_binary(l) do
        case l do
          "A" -> (n1+ n2+ n3) / 3
          "P" -> ((n1*5) + (n2*3) + (n3*2)) / (5+3+2)
          "H" -> 3/ ((1/n1) + (1/n2) + (1/n3))
          _ -> "invalid option"
        end
      end
      def n(_, _, _, _), do: {:error, "invalid values"}
    end


    defmodule Ex5 do
      #Faça uma função que recebe por parâmetro o tempo de duração de uma fábrica expressa em segundos
      #e retorna também por parâmetro esse tempo em horas, minutos e segundos.

      def tempo(t, "S"), do: IO.puts("#{t} segundos são equivalentes a #{(t/60)} minutos ou #{(t/60) /60} horas")
      def tempo(t, "M"), do: IO.puts("#{t} minutos são equivalentes a #{(t*60)} segundos ou #{(t/60)} horas")
      def tempo(t, "H"), do: IO.puts("#{t} horas são equivalentes a #{(t*60) *60} segundos ou #{(t*60)} minutos")
      def tempo(_, _), do: {:error, "invalid value"}
    end


    defmodule Ex6 do
      #Faça um procedimento que recebe a idade de um nadador por parâmetro e retorna ,
      #também por parâmetro, a categoria desse nadador de acordo com a tabela abaixo:
      def cat(age) when age >= 1 and age <5, do: "invalid age"
      def cat(age) when age >= 5 and age <= 7, do: "infantil a"
      def cat(age) when age >= 8 and age <= 10, do: "infantil b"
      def cat(age) when age >= 11 and age <= 13, do: "juvenil a"
      def cat(age) when age >= 14 and age <= 17, do: "juvenil b"
      def cat(age) when age >= 18, do: "adulto"
      def cat(_), do: "invalid value"
    end

    defmodule Ex9 do
      #Faça uma função que recebe um valor inteiro e verifica se o valor é positivo ou negativo.
      #A função deve retornar um valor booleano.
      def norp(v) when v > 0, do: true
      def norp(v) when v < 0, do: false
      def norp(_), do: {:error, "invalid"}
    end

    defmodule Ex10 do
      require Integer
      # 10. Faça uma função que recebe um valor inteiro e verifica se o valor é par ou ímpar.
      # A função deve retornar um valor booleano.
      def paim(v) when Integer.is_even(v), do: true
      def paim(v) when Integer.is_odd(v), do: false
      def paim(_), do: nil
    end

    defmodule Ex11 do
      # Leia um vetor de 12 posições e em seguida ler também dois valores X e Y quaisquer correspondentes
      # a duas posições no vetor. Ao final seu programa deverá escrever a soma dos valores encontrados nas
      # respectivas posições X e Y.
      def valor(list, x, y) when length(list) == 12, do: Enum.at(list, x) + Enum.at(list, y)
      def valor(_, _, _), do: "error"
    end

    defmodule Ex111 do
      #lista = Enum.to_list(1..10)
      #1.1. Crie uma lista com os números de 1 a 10 e utilize a função `Enum.map/2` para criar uma nova lista onde cada número é multiplicado por 2.
      def lista(lista), do: Enum.map(lista, fn x -> x * 2 end)
    end

    defmodule Ex112 do
      #1.2. Crie duas listas, uma com os números de 1 a 5 e outra com os números de 6 a 10. Use a função `++` para concatená-las.
      def lista(lista1, lista2), do: lista1 ++ lista2
    end

    defmodule Ex121 do
      #2.1. Crie uma tupla com três elementos e escreva uma função que retorne o terceiro elemento.
      def v_tupla(tupla), do: elem(tupla, 2)
    end

    defmodule Ex122 do
      #2.2. Crie uma função que aceite uma tupla como argumento e retorne uma nova tupla com um elemento adicional no final.
      def ntupla(tupla, x), do: Tuple.append(tupla, x)
    end

    defmodule Ex131 do
      #3.1. Crie um mapa que represente um livro, com chaves para o título, autor e ano de publicação. Use a função `Map.put/3` para adicionar uma chave para o número de páginas.
      def livromap(map, n_pages), do: Map.put(map, :pages, n_pages)
    end

    defmodule Ex132 do
      #3.2. Escreva uma função que aceite um mapa e uma chave e retorne o valor associado a essa chave.
      def mapkey(map, key), do: Map.get(map, key)
    end

    defmodule Ex141 do
      #4.1. Crie uma lista de palavras-chave que represente um carro, com chaves para a marca, o modelo e o ano. Use a função `Keyword.put/3` para adicionar uma chave para a cor.
      def klistcar(klistcar, key, value), do: Keyword.put_new(klistcar, key, value)
    end

    defmodule Ex142 do
      #4.2. Escreva uma função que aceite uma lista de palavras-chave e uma chave e retorne o valor associado a essa chave.
      def klistk(klist, key), do: Keyword.get(klist, key)
    end


defmodule Leet1 do
  #retorne uma lista duplicada
  @spec get_concatenation(nums :: [integer]) :: [integer]
  def get_concatenation(nums) do
    ans = nums
    ans ++ nums
  end
end

defmodule Array_from_permutation do
  #  Given a zero-based permutation nums (0-indexed), build an array ans of the same length where
  #  ans[i] = nums[nums[i]] for each 0 <= i < nums.length and return it.

  #   A zero-based permutation nums is an array of distinct integers from 0 to nums.length - 1 (inclusive).

  #  Example:
  #  Input: nums = [0,2,1,5,3,4]
  #  Output: [0,1,2,4,5,3]
  #  Explanation: The array ans is built as follows:
  #  ans = [nums[nums[0]], nums[nums[1]], nums[nums[2]], nums[nums[3]], nums[nums[4]], nums[nums[5]]]
  #    = [nums[0], nums[2], nums[1], nums[5], nums[3], nums[4]]
  #    = [0,1,2,4,5,3]
  @spec build_array(nums :: [integer]) :: [integer]
  def build_array(nums) do
  ans = for n <- nums, do: Enum.at(nums, n)
  ans
end
end

defmodule MaximumAchievable do
  # You are given two integers, num and t.
#
  # An integer x is called achievable if it can become equal to num after applying the following operation no more than t times:
#
  # Increase or decrease x by 1, and simultaneously increase or decrease num by 1.
  # Return the maximum possible achievable number. It can be proven that there exists at least one achievable number.

    @spec the_maximum_achievable_x(num :: integer, t :: integer) :: integer
    def the_maximum_achievable_x(num, t) do
      the_maximum_achievable_x(num, t, num)
    end

    defp the_maximum_achievable_x(num, t, x) when t > 0 do
      the_maximum_achievable_x(num + 1, t - 1, x + 2)
    end

    defp the_maximum_achievable_x(_num, _t, x) do
      x
    end
  end

  defmodule ConvertTemp do
    #You are given a non-negative floating point number rounded to two decimal places celsius, that denotes the temperature in Celsius.
    #You should convert Celsius into Kelvin and Fahrenheit and return it as an array ans = [kelvin, fahrenheit].
    #Return the array ans. Answers within 10-5 of the actual answer will be accepted.

    @spec convert_temperature(celsius :: float) :: [float]
    def convert_temperature(celsius) do
      [kelvin(celsius), fahrenheit(celsius)]
    end

    def kelvin(celsius) do
    celsius + 273.15
    end

    def fahrenheit(celsius) do
    celsius * 1.8 + 32.00
    end
  end

  defmodule NumberOfEmployees do
    #There are n employees in a company, numbered from 0 to n - 1. Each employee i has worked for hours[i] hours in the company.
    #The company requires each employee to work for at least target hours.
    #You are given a 0-indexed array of non-negative integers hours of length n and a non-negative integer target.
    #Return the integer denoting the number of employees who worked at least target hours.

    @spec number_of_employees_who_met_target(hours :: [integer], target :: integer) :: integer
    def number_of_employees_who_met_target(hours, target) do
      Enum.filter(hours, fn x -> x >= target end)
      |>length()
    end
  end

  defmodule FinalValue do
    #There is a programming language with only four operations and one variable X:
    #++X and X++ increments the value of the variable X by 1.
    #--X and X-- decrements the value of the variable X by 1.
    #Initially, the value of X is 0.
    #Given an array of strings operations containing a list of operations, return the final value of X after performing all the operations.

    @spec final_value_after_operations(operations :: [String.t]) :: integer
    def final_value_after_operations(operations) do
      operations
      |>Enum.reduce(0, fn op, rst ->
      cond do
      op == "X++" or op == "++X" -> rst + 1
      op == "X--" or op == "--X" -> rst - 1
      end
      end)
    end
  end

  defmodule JewelsInStones do
    #You're given strings jewels representing the types of stones that are jewels, and stones representing the stones you have.
    #Each character in stones is a type of stone you have. You want to know how many of the stones you have are also jewels.
    #Letters are case sensitive, so "a" is considered a different type of stone from "A".

    @spec num_jewels_in_stones(jewels :: String.t, stones :: String.t) :: integer
    def num_jewels_in_stones(jewels, stones) do
  stones
      |> String.graphemes()  # transforma a string em uma lista de caracteres
      |> Enum.filter(&String.contains?(jewels, &1)) # filtra apenas os caracteres que são joias
      |> Enum.count() # conta quantos caracteres são joias
    end
  end

  defmodule Sum do
    #Given two integers num1 and num2, return the sum of the two integers.
    @spec sum(num1 :: integer, num2 :: integer) :: integer
    def sum(num1, num2), do: num1 + num2
  end

  defmodule MaxWealth do
  #You are given an m x n integer grid accounts where accounts[i][j] is the amount of money the i​​​​​​​​​​​th​​​​ customer has in the j​​​​​​​​​​​th​​​​ bank.
  #Return the wealth that the richest customer has.
  #A customer's wealth is the amount of money they have in all their bank accounts. The richest customer is the customer that has the maximum wealth.

    @spec maximum_wealth(accounts :: [[integer]]) :: integer
    def maximum_wealth(accounts) do
      Enum.map(accounts, fn soma -> Enum.sum(soma) end)
      |>Enum.max()
    end
  end

  defmodule SmallestEven do
    #Given a positive integer n, return the smallest positive integer that is a multiple of both 2 and n.
    @spec smallest_even_multiple(n :: integer) :: integer
    def smallest_even_multiple(n) when rem(n, 2) == 0, do: n
    def smallest_even_multiple(n) when rem(n, 2) != 0, do: n * 2
  end

    defmodule MostWords do
      #A sentence is a list of words that are separated by a single space with no leading or trailing spaces.
      #You are given an array of strings sentences, where each sentences[i] represents a single sentence.
      #Return the maximum number of words that appear in a single sentence.

      @spec most_words_found(sentences :: [String.t]) :: integer
      def most_words_found(sentences) do
        Enum.reduce(sentences, 0, fn s, acc ->
          word_count = length(String.split(s))
          case word_count > acc do
          true -> word_count
          false -> acc
          end
        end)
      end
    end

    defmodule SmallerThanCurrent do
      #Given the array nums, for each nums[i] find out how many numbers in the array are smaller than it. That is,
      #for each nums[i] you have to count the number of valid j's such that j != i and nums[j] < nums[i].
      #Return the answer in an array.

      @spec smaller_numbers_than_current(nums :: [integer]) :: [integer]
        def smaller_numbers_than_current(nums) do
          Enum.map(nums, fn num ->
            Enum.count(nums, fn x -> x < num end)
          end)
        end
      end
