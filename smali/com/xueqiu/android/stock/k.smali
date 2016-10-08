.class public final Lcom/xueqiu/android/stock/k;
.super Landroid/support/v4/a/i;
.source "PrivateFundActivity.java"


# instance fields
.field private a:Lcom/google/gson/JsonObject;

.field private b:I

.field private c:[Ljava/lang/String;

.field private d:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 940
    invoke-direct {p0}, Landroid/support/v4/a/i;-><init>()V

    .line 942
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/stock/k;->a:Lcom/google/gson/JsonObject;

    .line 944
    iput v2, p0, Lcom/xueqiu/android/stock/k;->b:I

    .line 946
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u6708\u6536\u76ca"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "3\u4e2a\u6708\u6536\u76ca"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "1\u5e74\u6536\u76ca"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u4eca\u5e74\u6536\u76ca"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/xueqiu/android/stock/k;->c:[Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 1049
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1050
    const-string v0, "%.2f%%"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xueqiu/android/stock/k;->a:Lcom/google/gson/JsonObject;

    invoke-virtual {v3, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1052
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "- -"

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/k;)V
    .locals 4

    .prologue
    const v3, 0x7f0d0051

    .line 940
    .line 4009
    iget-object v0, p0, Lcom/xueqiu/android/stock/k;->d:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 4012
    iget v0, p0, Lcom/xueqiu/android/stock/k;->b:I

    invoke-static {}, Lcom/xueqiu/android/stock/PrivateFundActivity;->n()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 4013
    iget-object v0, p0, Lcom/xueqiu/android/stock/k;->d:Landroid/view/ViewGroup;

    const v1, 0x7f0e03bf

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v3}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4014
    iget-object v0, p0, Lcom/xueqiu/android/stock/k;->d:Landroid/view/ViewGroup;

    const v1, 0x7f0e0525

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v3}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void

    .line 4015
    :cond_1
    iget v0, p0, Lcom/xueqiu/android/stock/k;->b:I

    invoke-static {}, Lcom/xueqiu/android/stock/PrivateFundActivity;->o()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 4016
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/k;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 4017
    iget-object v0, p0, Lcom/xueqiu/android/stock/k;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0e066b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4018
    invoke-static {v3}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4016
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 963
    iget v0, p0, Lcom/xueqiu/android/stock/k;->b:I

    invoke-static {}, Lcom/xueqiu/android/stock/PrivateFundActivity;->n()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 964
    const v0, 0x7f030151

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xueqiu/android/stock/k;->d:Landroid/view/ViewGroup;

    .line 970
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/k;->d:Landroid/view/ViewGroup;

    return-object v0

    .line 965
    :cond_0
    iget v0, p0, Lcom/xueqiu/android/stock/k;->b:I

    invoke-static {}, Lcom/xueqiu/android/stock/PrivateFundActivity;->o()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 966
    const v0, 0x7f030152

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xueqiu/android/stock/k;->d:Landroid/view/ViewGroup;

    goto :goto_0

    .line 968
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/k;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->finish()V

    goto :goto_0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 952
    invoke-super {p0, p1}, Landroid/support/v4/a/i;->a(Landroid/os/Bundle;)V

    .line 1564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 953
    invoke-static {}, Lcom/xueqiu/android/stock/PrivateFundActivity;->l()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stock/k;->b:I

    .line 2564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 954
    invoke-static {}, Lcom/xueqiu/android/stock/PrivateFundActivity;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 955
    invoke-static {v0}, Lcom/xueqiu/android/base/b/a/c;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 956
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lcom/google/gson/JsonObject;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    iput-object v0, p0, Lcom/xueqiu/android/stock/k;->a:Lcom/google/gson/JsonObject;

    .line 958
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 975
    invoke-super {p0, p1, p2}, Landroid/support/v4/a/i;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2980
    iget v0, p0, Lcom/xueqiu/android/stock/k;->b:I

    invoke-static {}, Lcom/xueqiu/android/stock/PrivateFundActivity;->n()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 2981
    iget-object v0, p0, Lcom/xueqiu/android/stock/k;->d:Landroid/view/ViewGroup;

    const v2, 0x7f0e03bf

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2982
    iget-object v2, p0, Lcom/xueqiu/android/stock/k;->a:Lcom/google/gson/JsonObject;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/xueqiu/android/stock/k;->a:Lcom/google/gson/JsonObject;

    const-string v3, "since_founded_growth_rate"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/xueqiu/android/stock/k;->a:Lcom/google/gson/JsonObject;

    const-string v3, "since_founded_growth_rate"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2984
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v1

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/xueqiu/android/stock/k;->a:Lcom/google/gson/JsonObject;

    const-string v4, "since_founded_growth_rate"

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    aput v3, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 2985
    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2986
    new-instance v2, Lcom/xueqiu/android/stock/k$1;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/stock/k$1;-><init>(Lcom/xueqiu/android/stock/k;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2993
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 2995
    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/xueqiu/android/stock/k;->b:I

    invoke-static {}, Lcom/xueqiu/android/stock/PrivateFundActivity;->o()I

    move-result v2

    if-ne v0, v2, :cond_0

    move v2, v1

    .line 2997
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/k;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 2998
    iget-object v0, p0, Lcom/xueqiu/android/stock/k;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e066a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2999
    iget-object v1, p0, Lcom/xueqiu/android/stock/k;->d:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0e066b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3000
    iget-object v3, p0, Lcom/xueqiu/android/stock/k;->c:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3024
    iget-object v0, p0, Lcom/xueqiu/android/stock/k;->a:Lcom/google/gson/JsonObject;

    if-nez v0, :cond_2

    .line 3025
    const-string v0, "- -"

    .line 3001
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2997
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 3028
    :cond_2
    packed-switch v2, :pswitch_data_0

    .line 3042
    const-string v0, "- -"

    goto :goto_1

    .line 3030
    :pswitch_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/k;->a:Lcom/google/gson/JsonObject;

    const-string v3, "growth_rate_month1"

    invoke-direct {p0, v0, v3}, Lcom/xueqiu/android/stock/k;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3033
    :pswitch_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/k;->a:Lcom/google/gson/JsonObject;

    const-string v3, "growth_rate_month3"

    invoke-direct {p0, v0, v3}, Lcom/xueqiu/android/stock/k;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3036
    :pswitch_2
    iget-object v0, p0, Lcom/xueqiu/android/stock/k;->a:Lcom/google/gson/JsonObject;

    const-string v3, "growth_rate_year"

    invoke-direct {p0, v0, v3}, Lcom/xueqiu/android/stock/k;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3039
    :pswitch_3
    iget-object v0, p0, Lcom/xueqiu/android/stock/k;->a:Lcom/google/gson/JsonObject;

    const-string v3, "growth_rate_this_year"

    invoke-direct {p0, v0, v3}, Lcom/xueqiu/android/stock/k;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3028
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
