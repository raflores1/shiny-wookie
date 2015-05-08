module Totals


def totals(estimate_id, subtotal)
	Estimate.find(estimate_id)
	estimate.update(subtotal: subtotal)
	statetax = (estimate.subtotal * 0.055)
	muntax = (estimate.subtotal * 0.015)
	estimate.update(statetax: statetax.round(2))
	estimate.update(muntax: muntax.round(2))
	total = subtotal.round(2) + statetax.round(2) + muntax.round(2)
	estimate.update(total: total)
end



end
