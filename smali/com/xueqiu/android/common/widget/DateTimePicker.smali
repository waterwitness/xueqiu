.class public Lcom/xueqiu/android/common/widget/DateTimePicker;
.super Landroid/widget/RelativeLayout;
.source "DateTimePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/DatePicker$OnDateChangedListener;
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# instance fields
.field private a:Landroid/widget/DatePicker;

.field private b:Landroid/widget/TimePicker;

.field private c:Landroid/widget/ViewSwitcher;

.field private d:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xueqiu/android/common/widget/DateTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xueqiu/android/common/widget/DateTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 46
    const v1, 0x7f030216

    invoke-virtual {v0, v1, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 49
    const v1, 0x7f030215

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 50
    const v2, 0x7f030228

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 53
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/xueqiu/android/common/widget/DateTimePicker;->d:Ljava/util/Calendar;

    .line 55
    const v2, 0x7f0e0766

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/common/widget/DateTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewSwitcher;

    iput-object v2, p0, Lcom/xueqiu/android/common/widget/DateTimePicker;->c:Landroid/widget/ViewSwitcher;

    .line 58
    const v2, 0x7f0e0762

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/DatePicker;

    iput-object v2, p0, Lcom/xueqiu/android/common/widget/DateTimePicker;->a:Landroid/widget/DatePicker;

    .line 59
    iget-object v2, p0, Lcom/xueqiu/android/common/widget/DateTimePicker;->a:Landroid/widget/DatePicker;

    iget-object v3, p0, Lcom/xueqiu/android/common/widget/DateTimePicker;->d:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/xueqiu/android/common/widget/DateTimePicker;->d:Ljava/util/Calendar;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Lcom/xueqiu/android/common/widget/DateTimePicker;->d:Ljava/util/Calendar;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 62
    const v2, 0x7f0e077c

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TimePicker;

    iput-object v2, p0, Lcom/xueqiu/android/common/widget/DateTimePicker;->b:Landroid/widget/TimePicker;

    .line 63
    iget-object v2, p0, Lcom/xueqiu/android/common/widget/DateTimePicker;->b:Landroid/widget/TimePicker;

    invoke-virtual {v2, p0}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 66
    const v2, 0x7f0e0765

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/common/widget/DateTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v2, 0x7f0e0764

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/common/widget/DateTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v2, p0, Lcom/xueqiu/android/common/widget/DateTimePicker;->c:Landroid/widget/ViewSwitcher;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;I)V

    .line 71
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/DateTimePicker;->c:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1, v0, v7}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;I)V

    .line 72
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/DateTimePicker;->d:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public final a(II)V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/DateTimePicker;->b:Landroid/widget/TimePicker;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 145
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/DateTimePicker;->b:Landroid/widget/TimePicker;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 146
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/DateTimePicker;->b:Landroid/widget/TimePicker;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 147
    return-void
.end method

.method public final a(III)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/DateTimePicker;->a:Landroid/widget/DatePicker;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 140
    return-void
.end method

.method public final a(IIIII)V
    .locals 0

    .prologue
    .line 118
    invoke-virtual {p0, p1, p2, p3}, Lcom/xueqiu/android/common/widget/DateTimePicker;->a(III)V

    .line 119
    invoke-virtual {p0, p4, p5}, Lcom/xueqiu/android/common/widget/DateTimePicker;->a(II)V

    .line 120
    return-void
.end method

.method public getDateTimeMillis()J
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/DateTimePicker;->d:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 102
    :goto_0
    return-void

    .line 91
    :pswitch_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 92
    const v0, 0x7f0e0765

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/DateTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 93
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/DateTimePicker;->c:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->showPrevious()V

    goto :goto_0

    .line 97
    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 98
    const v0, 0x7f0e0764

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/DateTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 99
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/DateTimePicker;->c:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->showNext()V

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x7f0e0764
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 6

    .prologue
    .line 78
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/DateTimePicker;->d:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/DateTimePicker;->d:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/DateTimePicker;->d:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move v1, p2

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 79
    return-void
.end method

.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 6

    .prologue
    .line 84
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/DateTimePicker;->d:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/DateTimePicker;->d:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/xueqiu/android/common/widget/DateTimePicker;->d:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/xueqiu/android/common/widget/DateTimePicker;->d:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 85
    return-void
.end method

.method public setIs24HourView(Z)V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/DateTimePicker;->b:Landroid/widget/TimePicker;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 130
    return-void
.end method
