
func int actual_cost(var int real_atr_val,var int limit,var int inc,var int level)
{
	var int cost1;
	var int cost2;
	cost1 = limit - real_atr_val;
	cost2 = 0;
	if((cost1 < inc) && (cost1 > 0))
	{
		cost2 = (level + 1) * (inc - cost1);
		cost1 = level * cost1;
		return cost1 + cost2;
	};
	return inc * level;
};

