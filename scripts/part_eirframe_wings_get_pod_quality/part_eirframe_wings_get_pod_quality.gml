function part_eirframe_wings_get_pod_quality(pods) {
    // Create and populate the grade map
    var gradeMap = ds_map_create();
    ds_map_add(gradeMap, "A", 90);
    ds_map_add(gradeMap, "B", 80);
    ds_map_add(gradeMap, "C", 70);
    ds_map_add(gradeMap, "D", 60);
    ds_map_add(gradeMap, "F", 50);

    var total = 0;
    var divisor = 0;

    // Check if pods is a valid array and iterate over it
    if (array_length(pods) > 0) {
        for (var i = 0; i < array_length(pods); i++) {
            var currentPod = pods[i];
            if (currentPod != undefined) {
                var quality = ds_map_find_value(gradeMap, currentPod.stat_quality);
                if (quality != undefined) {
                    total += quality;
                    divisor++;
                }
            }
        }
    }

    // Clean up the grade map
    ds_map_destroy(gradeMap);

    // Return average quality or 0 if no valid pods
    return (divisor > 0) ? total / divisor : 0;
}
