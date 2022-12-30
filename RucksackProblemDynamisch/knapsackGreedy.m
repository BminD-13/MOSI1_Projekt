function [itemsPickedBinary, rest, valueMax, ratio] = knapsackGreedy(knapsackCapacity, itemValue, itemCapacity)
    % verhaeltnis zwischen Wert und Gewicht ermitteln
    value = itemValue;
    capacity = itemCapacity;
    ratio = value ./ capacity;

    [ratioSorted, f1] = sort(ratio);
    valueSorted = value(f1);
    capacitySorted = capacity(f1);
    itemOrder = f1;
    
    weightPacked = 0;
    valuePacked = 0;
    itemsPickedSorted = zeros(length(itemValue))
    i = 1;
    while weightPacked < knapsackCapacity
        weightPacked = weightPacked + capacitySorted(i);
        valuePacked = valuePacked + valueSorted(i);
        itemsPickedSorted(i) = 1;
        i = i + 1;
    end
    rest = weightPacked - knapsackCapacity;
    valueMax = valuePacked;
    [itemOrder , arcf1] = sort(itemOrder);
    itemsPickedBinary = itemsPickedSorted(arcf1);
end

