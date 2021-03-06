{
  new(
    title,
    format='none',
    description='',
    interval=null,
    height=null,
    datasource=null,
    span=null,
    min_span=null,
    decimals=null,
    valueName='avg',
    valueFontSize='80%',
    prefixFontSize='50%',
    postfixFontSize='50%',
    mappingType=1,
    repeat=null,
    repeatDirection=null,
    prefix='',
    postfix='',
    colors=[
      '#299c46',
      'rgba(237, 129, 40, 0.89)',
      '#d44a3a',
    ],
    colorBackground=false,
    colorValue=false,
    thresholds='',
    valueMaps=[
      {
        value: 'null',
        op: '=',
        text: 'N/A',
      },
    ],
    rangeMaps=[
      {
        from: 'null',
        to: 'null',
        text: 'N/A',
      },
    ],
    transparent=null,
  )::
    {
      [if height != null then 'height']: height,
      [if description != '' then 'description']: description,
      [if repeat != null then 'repeat']: repeat,
      [if repeatDirection != null then 'repeatDirection']: repeatDirection,
      [if transparent != null then 'transparent']: transparent,
      [if min_span != null then 'minSpan']: min_span,
      title: title,
      [if span != null then 'span']: span,
      type: 'singlestat',
      datasource: datasource,
      targets: [
      ],
      links: [],
      [if decimals != null then 'decimals']: decimals,
      maxDataPoints: 100,
      interval: interval,
      cacheTimeout: null,
      format: format,
      prefix: prefix,
      postfix: postfix,
      nullText: null,
      valueMaps: valueMaps,
      mappingTypes: [
        {
          name: 'value to text',
          value: 1,
        },
        {
          name: 'range to text',
          value: 2,
        },
      ],
      rangeMaps: rangeMaps,
      mappingType:
        if mappingType == 'value'
        then
          1
        else if mappingType == 'range'
        then
          2
        else
          mappingType,
      nullPointMode: 'connected',
      valueName: valueName,
      prefixFontSize: prefixFontSize,
      valueFontSize: valueFontSize,
      postfixFontSize: postfixFontSize,
      thresholds: thresholds,
      colorBackground: colorBackground,
      colorValue: colorValue,
      colors: colors,
      sparkline: {
        show: false,
        full: false,
        lineColor: 'rgb(31, 120, 193)',
        fillColor: 'rgba(31, 118, 189, 0.18)',
      },
      gauge: {
        show: false,
        minValue: 0,
        maxValue: 100,
        thresholdMarkers: true,
        thresholdLabels: false,
      },
      tableColumn: '',
      addTarget(target):: self {
        targets+: [target],
      },
    },
}
