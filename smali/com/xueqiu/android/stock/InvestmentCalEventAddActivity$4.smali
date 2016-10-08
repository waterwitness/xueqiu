.class final Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$4;
.super Ljava/lang/Object;
.source "InvestmentCalEventAddActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)V
    .locals 0

    .prologue
    .line 925
    iput-object p1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$4;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .prologue
    const v7, 0x7f0e062e

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 929
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$4;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->e(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 994
    :cond_0
    :goto_0
    return-void

    .line 931
    :pswitch_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$4;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    const v1, 0x7f0e0622

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 932
    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$4;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 933
    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 934
    if-nez p2, :cond_1

    .line 935
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$4;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    move-result-object v0

    const-string v1, "Asia/Shanghai"

    iput-object v1, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mTimezone:Ljava/lang/String;

    goto :goto_0

    .line 937
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$4;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    move-result-object v0

    const-string v1, "US/Eastern"

    iput-object v1, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mTimezone:Ljava/lang/String;

    goto :goto_0

    .line 942
    :pswitch_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$4;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->f(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$4;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->f(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;

    .line 944
    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$4;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v1}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    move-result-object v1

    iget-wide v2, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mId:J

    iput-wide v2, v1, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mCalendar_id:J

    .line 945
    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$4;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    const v2, 0x7f0e0625

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 946
    iget-object v2, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 947
    iget v0, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mType:I

    if-eq v0, v5, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$4;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->g(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 948
    :cond_2
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    .line 949
    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$4;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;[I)V

    .line 950
    new-array v1, v4, [I

    aput v7, v1, v6

    .line 951
    iget-object v2, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$4;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v2, v1}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->c(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;[I)V

    .line 952
    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$4;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->b(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;[I)V

    goto/16 :goto_0

    .line 954
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$4;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->g(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$4;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    move-result-object v0

    iget-object v0, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStock:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 955
    :cond_4
    new-array v0, v5, [I

    fill-array-data v0, :array_1

    .line 956
    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$4;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->c(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;[I)V

    .line 957
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$4;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    new-array v1, v4, [I

    const v2, 0x7f0e062b

    aput v2, v1, v6

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->b(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;[I)V

    goto/16 :goto_0

    .line 959
    :cond_5
    new-array v0, v4, [I

    const v1, 0x7f0e0631

    aput v1, v0, v6

    .line 960
    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$4;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->c(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;[I)V

    .line 961
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$4;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    new-array v1, v4, [I

    aput v7, v1, v6

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;[I)V

    .line 962
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$4;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    new-array v1, v5, [I

    fill-array-data v1, :array_2

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->b(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;[I)V

    goto/16 :goto_0

    .line 968
    :pswitch_2
    const-string v0, "0"

    .line 969
    if-ne p2, v4, :cond_7

    .line 970
    const-string v0, "5min"

    .line 982
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$4;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v1}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    move-result-object v1

    iput-object v0, v1, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mAlert:Ljava/lang/String;

    .line 983
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$4;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 984
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$4;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    const v2, 0x7f0e0628

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 985
    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 971
    :cond_7
    if-ne p2, v5, :cond_8

    .line 972
    const-string v0, "15min"

    goto :goto_1

    .line 973
    :cond_8
    const/4 v1, 0x3

    if-ne p2, v1, :cond_9

    .line 974
    const-string v0, "30min"

    goto :goto_1

    .line 975
    :cond_9
    const/4 v1, 0x4

    if-ne p2, v1, :cond_a

    .line 976
    const-string v0, "1"

    goto :goto_1

    .line 977
    :cond_a
    const/4 v1, 0x5

    if-ne p2, v1, :cond_b

    .line 978
    const-string v0, "12"

    goto :goto_1

    .line 979
    :cond_b
    const/4 v1, 0x6

    if-ne p2, v1, :cond_6

    .line 980
    const-string v0, "24"

    goto :goto_1

    .line 988
    :pswitch_3
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$4;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    iput v1, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStock_event_type:I

    .line 989
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$4;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 990
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$4;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    const v2, 0x7f0e0633

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 991
    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 929
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 948
    :array_0
    .array-data 4
        0x7f0e062b
        0x7f0e0631
    .end array-data

    .line 955
    :array_1
    .array-data 4
        0x7f0e062e
        0x7f0e0631
    .end array-data

    .line 962
    :array_2
    .array-data 4
        0x7f0e062b
        0x7f0e062e
    .end array-data
.end method
