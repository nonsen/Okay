{if $deliveries}
    <div id="ajax_deliveries" class="block">
        <div class="block_heading">Выберите способ доставки:</div>
        <ul id="deliveries">
        	{foreach $deliveries as $delivery}
        	<li>
    			<input type="radio" name="delivery_id" value="{$delivery->id}" {if $delivery_id==$delivery->id}checked{elseif $delivery@first}checked{/if} id="deliveries_{$delivery->id}">
    			<label for="deliveries_{$delivery->id}">
    			{$delivery->name}
    			{if $cart->total_price < $delivery->free_from && $delivery->price>0}
    				({$delivery->price|convert}&nbsp;{$currency->sign})
    			{elseif $cart->total_price >= $delivery->free_from}
    				(бесплатно)
    			{/if}
    			</label>

    			<div class="description">
                    {$delivery->description}
    			</div>
        	</li>
        	{/foreach}
        </ul>
    </div>
{/if}