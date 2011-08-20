object HelloWorld 
{
    def next_number(x: BigInt):BigInt =
    {
        if (x % 2 == 0)
        {
            return x / 2
        }
        else
        {
            return (x*3)+1
        }
    }

    def get_chain(start: BigInt):List[BigInt] =
    {
        var chain = List[BigInt]()
        var x = start

        while (x != 1)
        {
            chain = chain :+ x
            x = next_number(x)
        }

        chain = chain :+ BigInt(1)
        
        return chain
    }


    def main(args: Array[String])
    {
        var longest = 0

        for (i <- (1 to 1000000))
        {
            var length = get_chain(i).length
            if (length > longest)
            {
                longest = length
                println(i + ", length: " + length)
            }
        }
    }
}
