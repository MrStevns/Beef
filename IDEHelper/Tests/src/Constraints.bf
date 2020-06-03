using System;
using System.Collections;

namespace Tests
{
	class Constraints
	{
		class Dicto : Dictionary<int, float>
		{
		   
		}

		public static bool Method1<T>(IEnumerator<T> param1)
		{
		    return true;
		}

		public static bool Method2<TEnumerator, TElement>(TEnumerator param1) where TEnumerator : IEnumerator<TElement>
		{
		    for (let val in param1)
			{
				
			}

			return true;
		}

		public static bool Method3<K, V>(Dictionary<K, V> param1) where K : IHashable
		{
			Method1(param1.GetEnumerator());
			Method1((IEnumerator<(K key, V value)>)param1.GetEnumerator());
		    return Method2<Dictionary<K, V>.Enumerator, (K key, V value)>(param1.GetEnumerator());
		}

		[Test]
		public static void TestBasics()
		{
			Dicto dicto = scope .();
			Method3(dicto);
		}
	}
}
