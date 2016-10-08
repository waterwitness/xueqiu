.class public final Lcom/xueqiu/android/stock/a/af;
.super Lcom/xueqiu/android/common/a/d;
.source "StockRankListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/a/d",
        "<",
        "Lcom/xueqiu/android/stock/model/OldPortFolio;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Landroid/content/Context;

.field private f:Ljava/lang/String;

.field private g:Landroid/view/LayoutInflater;

.field private h:Lcom/xueqiu/android/base/util/ar;

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/a/d;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/stock/a/af;->e:Landroid/content/Context;

    .line 49
    iput-object p1, p0, Lcom/xueqiu/android/stock/a/af;->e:Landroid/content/Context;

    .line 50
    invoke-static {}, Lcom/xueqiu/android/base/util/ar;->a()Lcom/xueqiu/android/base/util/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/a/af;->h:Lcom/xueqiu/android/base/util/ar;

    .line 51
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/a/af;->g:Landroid/view/LayoutInflater;

    .line 52
    iput p2, p0, Lcom/xueqiu/android/stock/a/af;->i:I

    .line 54
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 55
    const v1, 0x7f0701ee

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 56
    const v2, 0x7f070570

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/a/af;->f:Ljava/lang/String;

    .line 57
    return-void
.end method

.method private static a(ILcom/xueqiu/android/stock/a/ag;Lcom/xueqiu/android/stock/model/OldPortFolio;Lcom/xueqiu/android/base/util/ar;)V
    .locals 10

    .prologue
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    const-wide/16 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 244
    packed-switch p0, :pswitch_data_0

    .line 282
    invoke-virtual {p2}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getGrowthRateMonth1()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_4

    .line 283
    iget-object v0, p1, Lcom/xueqiu/android/stock/a/ag;->d:Landroid/widget/TextView;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    invoke-virtual {p3, v2, v3}, Lcom/xueqiu/android/base/util/ar;->a(D)I

    move-result v0

    .line 291
    :goto_0
    iget-object v1, p1, Lcom/xueqiu/android/stock/a/ag;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 292
    iget-object v1, p1, Lcom/xueqiu/android/stock/a/ag;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 294
    invoke-virtual {p2}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getUnitNetValue()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_5

    .line 295
    iget-object v0, p1, Lcom/xueqiu/android/stock/a/ag;->c:Landroid/widget/TextView;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    :goto_1
    return-void

    .line 246
    :pswitch_0
    invoke-virtual {p2}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getGrowthRateMonth1()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p1, Lcom/xueqiu/android/stock/a/ag;->d:Landroid/widget/TextView;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    invoke-virtual {p3, v2, v3}, Lcom/xueqiu/android/base/util/ar;->a(D)I

    move-result v0

    goto :goto_0

    .line 250
    :cond_0
    iget-object v0, p1, Lcom/xueqiu/android/stock/a/ag;->d:Landroid/widget/TextView;

    const-string v1, "%.2f%%"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getGrowthRateMonth1()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    invoke-virtual {p2}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getGrowthRateMonth1()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/xueqiu/android/base/util/ar;->a(D)I

    move-result v0

    goto :goto_0

    .line 255
    :pswitch_1
    invoke-virtual {p2}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getGrowthRateMonth3()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_1

    .line 256
    iget-object v0, p1, Lcom/xueqiu/android/stock/a/ag;->d:Landroid/widget/TextView;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    invoke-virtual {p3, v2, v3}, Lcom/xueqiu/android/base/util/ar;->a(D)I

    move-result v0

    goto :goto_0

    .line 259
    :cond_1
    iget-object v0, p1, Lcom/xueqiu/android/stock/a/ag;->d:Landroid/widget/TextView;

    const-string v1, "%.2f%%"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getGrowthRateMonth3()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    invoke-virtual {p2}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getGrowthRateMonth3()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/xueqiu/android/base/util/ar;->a(D)I

    move-result v0

    goto/16 :goto_0

    .line 264
    :pswitch_2
    invoke-virtual {p2}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getGrowthRateMonth6()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_2

    .line 265
    iget-object v0, p1, Lcom/xueqiu/android/stock/a/ag;->d:Landroid/widget/TextView;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    invoke-virtual {p3, v2, v3}, Lcom/xueqiu/android/base/util/ar;->a(D)I

    move-result v0

    goto/16 :goto_0

    .line 268
    :cond_2
    iget-object v0, p1, Lcom/xueqiu/android/stock/a/ag;->d:Landroid/widget/TextView;

    const-string v1, "%.2f%%"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getGrowthRateMonth6()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    invoke-virtual {p2}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getGrowthRateMonth6()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/xueqiu/android/base/util/ar;->a(D)I

    move-result v0

    goto/16 :goto_0

    .line 273
    :pswitch_3
    invoke-virtual {p2}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getGrowthRateYear()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_3

    .line 274
    iget-object v0, p1, Lcom/xueqiu/android/stock/a/ag;->d:Landroid/widget/TextView;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    invoke-virtual {p3, v2, v3}, Lcom/xueqiu/android/base/util/ar;->a(D)I

    move-result v0

    goto/16 :goto_0

    .line 277
    :cond_3
    iget-object v0, p1, Lcom/xueqiu/android/stock/a/ag;->d:Landroid/widget/TextView;

    const-string v1, "%.2f%%"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getGrowthRateYear()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    invoke-virtual {p2}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getGrowthRateYear()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/xueqiu/android/base/util/ar;->a(D)I

    move-result v0

    goto/16 :goto_0

    .line 286
    :cond_4
    iget-object v0, p1, Lcom/xueqiu/android/stock/a/ag;->d:Landroid/widget/TextView;

    const-string v1, "%.2f%%"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getGrowthRateMonth1()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    invoke-virtual {p2}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getGrowthRateMonth3()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/xueqiu/android/base/util/ar;->a(D)I

    move-result v0

    goto/16 :goto_0

    .line 297
    :cond_5
    iget-object v0, p1, Lcom/xueqiu/android/stock/a/ag;->c:Landroid/widget/TextView;

    const-string v1, "%.4f"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getUnitNetValue()Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 244
    :pswitch_data_0
    .packed-switch 0x4a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Lcom/xueqiu/android/stock/model/OldPortFolio;ILcom/xueqiu/android/stock/a/ag;Landroid/content/Context;Ljava/lang/String;Lcom/xueqiu/android/base/util/ar;)V
    .locals 10

    .prologue
    const/16 v3, 0x4a

    const/4 v7, 0x1

    const/16 v5, 0x8

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 77
    invoke-virtual {p3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    new-array v1, v7, [I

    const v2, 0x7f010120

    aput v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 78
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1065
    iput v0, p5, Lcom/xueqiu/android/base/util/ar;->a:I

    .line 81
    iget-object v1, p2, Lcom/xueqiu/android/stock/a/ag;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    iget-object v1, p2, Lcom/xueqiu/android/stock/a/ag;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    iget-object v0, p2, Lcom/xueqiu/android/stock/a/ag;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    iget-object v0, p2, Lcom/xueqiu/android/stock/a/ag;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    iget-object v0, p2, Lcom/xueqiu/android/stock/a/ag;->f:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 87
    iget-object v0, p2, Lcom/xueqiu/android/stock/a/ag;->a:Landroid/widget/TextView;

    instance-of v0, v0, Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    if-eqz v0, :cond_3

    .line 88
    iget-object v0, p2, Lcom/xueqiu/android/stock/a/ag;->a:Landroid/widget/TextView;

    check-cast v0, Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    .line 89
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->setTextSize(F)V

    .line 90
    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->a()V

    .line 91
    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {p3, v1}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->setMinTextSize(F)V

    .line 92
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :goto_0
    iget-object v0, p2, Lcom/xueqiu/android/stock/a/ag;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 102
    if-eq p1, v7, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/16 v1, 0x15

    if-eq p1, v1, :cond_0

    const/16 v1, 0x16

    if-eq p1, v1, :cond_0

    const/16 v1, 0xb

    if-eq p1, v1, :cond_0

    const/16 v1, 0xc

    if-ne p1, v1, :cond_9

    .line 109
    :cond_0
    iget-object v0, p2, Lcom/xueqiu/android/stock/a/ag;->f:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object v0, p2, Lcom/xueqiu/android/stock/a/ag;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getChange()D

    move-result-wide v0

    .line 113
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getPercentage()D

    move-result-wide v2

    .line 114
    const v4, 0x7f070570

    invoke-virtual {p3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 115
    cmpl-double v4, v0, v8

    if-lez v4, :cond_4

    .line 116
    iget-object v0, p2, Lcom/xueqiu/android/stock/a/ag;->e:Landroid/widget/ImageView;

    const v1, 0x7f0203e8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    :goto_1
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "%.2f%%"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 134
    cmpl-double v1, v2, v8

    if-lez v1, :cond_1

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "+"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    :cond_1
    iget-object v1, p2, Lcom/xueqiu/android/stock/a/ag;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p2, Lcom/xueqiu/android/stock/a/ag;->d:Landroid/widget/TextView;

    invoke-virtual {p5, v2, v3}, Lcom/xueqiu/android/base/util/ar;->a(D)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 238
    :cond_2
    :goto_2
    return-void

    .line 94
    :cond_3
    iget-object v0, p2, Lcom/xueqiu/android/stock/a/ag;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 117
    :cond_4
    cmpg-double v0, v0, v8

    if-gez v0, :cond_5

    .line 118
    iget-object v0, p2, Lcom/xueqiu/android/stock/a/ag;->e:Landroid/widget/ImageView;

    const v1, 0x7f0203e9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 120
    :cond_5
    iget-object v0, p2, Lcom/xueqiu/android/stock/a/ag;->e:Landroid/widget/ImageView;

    const v1, 0x7f0203eb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 124
    :cond_6
    cmpl-double v4, v0, v8

    if-lez v4, :cond_7

    .line 125
    iget-object v0, p2, Lcom/xueqiu/android/stock/a/ag;->e:Landroid/widget/ImageView;

    const v1, 0x7f0203ea

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 126
    :cond_7
    cmpg-double v0, v0, v8

    if-gez v0, :cond_8

    .line 127
    iget-object v0, p2, Lcom/xueqiu/android/stock/a/ag;->e:Landroid/widget/ImageView;

    const v1, 0x7f0203e7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 129
    :cond_8
    iget-object v0, p2, Lcom/xueqiu/android/stock/a/ag;->e:Landroid/widget/ImageView;

    const v1, 0x7f0203eb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 140
    :cond_9
    const/4 v1, 0x3

    if-eq p1, v1, :cond_a

    const/4 v1, 0x4

    if-eq p1, v1, :cond_a

    const/16 v1, 0x17

    if-eq p1, v1, :cond_a

    const/16 v1, 0x18

    if-eq p1, v1, :cond_a

    const/16 v1, 0xd

    if-eq p1, v1, :cond_a

    const/16 v1, 0xe

    if-eq p1, v1, :cond_a

    const/16 v1, 0xf

    if-eq p1, v1, :cond_a

    const/16 v1, 0x10

    if-eq p1, v1, :cond_a

    const/16 v1, 0x2b

    if-eq p1, v1, :cond_a

    const/16 v1, 0x2a

    if-eq p1, v1, :cond_a

    const/16 v1, 0x29

    if-eq p1, v1, :cond_a

    const/16 v1, 0x3d

    if-eq p1, v1, :cond_a

    const/16 v1, 0x47

    if-eq p1, v1, :cond_a

    const/16 v1, 0x48

    if-eq p1, v1, :cond_a

    const/16 v1, 0x22

    if-eq p1, v1, :cond_a

    const/16 v1, 0x1f

    if-eq p1, v1, :cond_a

    const/16 v1, 0x21

    if-eq p1, v1, :cond_a

    const/16 v1, 0x52

    if-eq p1, v1, :cond_a

    const/16 v1, 0x51

    if-eq p1, v1, :cond_a

    const/16 v1, 0x53

    if-eq p1, v1, :cond_a

    const/16 v1, 0x54

    if-eq p1, v1, :cond_a

    const/16 v1, 0xa

    if-eq p1, v1, :cond_a

    const/16 v1, 0x11

    if-eq p1, v1, :cond_a

    const/16 v1, 0x13

    if-eq p1, v1, :cond_a

    const/16 v1, 0x12

    if-ne p1, v1, :cond_c

    .line 166
    :cond_a
    iget-object v1, p2, Lcom/xueqiu/android/stock/a/ag;->f:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 167
    iget-object v1, p2, Lcom/xueqiu/android/stock/a/ag;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getPercentage()D

    move-result-wide v2

    .line 170
    iget-object v1, p2, Lcom/xueqiu/android/stock/a/ag;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getCurrent()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "%.2f%%"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 173
    cmpl-double v1, v2, v8

    if-lez v1, :cond_b

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "+"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    :cond_b
    iget-object v1, p2, Lcom/xueqiu/android/stock/a/ag;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    invoke-virtual {p5, v2, v3}, Lcom/xueqiu/android/base/util/ar;->a(D)I

    move-result v0

    .line 179
    iget-object v1, p2, Lcom/xueqiu/android/stock/a/ag;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 180
    iget-object v1, p2, Lcom/xueqiu/android/stock/a/ag;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 181
    :cond_c
    const/4 v1, 0x5

    if-ne p1, v1, :cond_d

    .line 182
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getAmount()D

    move-result-wide v2

    .line 183
    iget-object v1, p2, Lcom/xueqiu/android/stock/a/ag;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getCurrent()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p2, Lcom/xueqiu/android/stock/a/ag;->d:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lcom/xueqiu/android/stockchart/f/a;->b(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getPercentage()D

    move-result-wide v0

    invoke-virtual {p5, v0, v1}, Lcom/xueqiu/android/base/util/ar;->a(D)I

    move-result v0

    .line 187
    iget-object v1, p2, Lcom/xueqiu/android/stock/a/ag;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 188
    :cond_d
    const/4 v1, 0x6

    if-ne p1, v1, :cond_e

    .line 189
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getTurnoverRate()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 190
    iget-object v1, p2, Lcom/xueqiu/android/stock/a/ag;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getCurrent()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v1, p2, Lcom/xueqiu/android/stock/a/ag;->d:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getPercentage()D

    move-result-wide v0

    invoke-virtual {p5, v0, v1}, Lcom/xueqiu/android/base/util/ar;->a(D)I

    move-result v0

    .line 194
    iget-object v1, p2, Lcom/xueqiu/android/stock/a/ag;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 195
    :cond_e
    if-eq p1, v5, :cond_f

    const/16 v1, 0xb4

    if-ne p1, v1, :cond_12

    .line 198
    :cond_f
    :try_start_0
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getIpoTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/util/h;->b(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v1

    .line 199
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy.MM.dd"

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 200
    iget-object v3, p2, Lcom/xueqiu/android/stock/a/ag;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_3
    if-ne p1, v5, :cond_10

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getIpoPrice()D

    move-result-wide v2

    cmpl-double v1, v2, v8

    if-eqz v1, :cond_10

    .line 206
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getIpoPrice()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 212
    :goto_4
    iget-object v1, p2, Lcom/xueqiu/android/stock/a/ag;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 202
    :catch_0
    move-exception v1

    iget-object v1, p2, Lcom/xueqiu/android/stock/a/ag;->d:Landroid/widget/TextView;

    const-string v2, "--  "

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 207
    :cond_10
    const/16 v0, 0xb4

    if-ne p1, v0, :cond_11

    .line 208
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getPriceRange()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 210
    :cond_11
    const-string v0, "--  "

    goto :goto_4

    .line 213
    :cond_12
    const/16 v1, 0x9

    if-eq p1, v1, :cond_13

    const/16 v1, 0xbe

    if-ne p1, v1, :cond_14

    .line 215
    :cond_13
    iget-object v1, p2, Lcom/xueqiu/android/stock/a/ag;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getCurrent()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v1, p2, Lcom/xueqiu/android/stock/a/ag;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getIpoPrice()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 218
    :cond_14
    const/16 v1, 0x20

    if-ne p1, v1, :cond_16

    .line 219
    iget-object v1, p2, Lcom/xueqiu/android/stock/a/ag;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "0.0000"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getCurrent()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getPe_ttm()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 221
    iget-object v1, p2, Lcom/xueqiu/android/stock/a/ag;->d:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getPe_ttm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 223
    :cond_15
    iget-object v0, p2, Lcom/xueqiu/android/stock/a/ag;->d:Landroid/widget/TextView;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 226
    :cond_16
    const/16 v1, 0x33

    if-ne p1, v1, :cond_17

    .line 227
    iget-object v1, p2, Lcom/xueqiu/android/stock/a/ag;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getCurrent()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v0, p2, Lcom/xueqiu/android/stock/a/ag;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getVolume()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/util/au;->a(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 229
    :cond_17
    if-ne p1, v3, :cond_18

    .line 230
    invoke-static {v3, p2, p0, p5}, Lcom/xueqiu/android/stock/a/af;->a(ILcom/xueqiu/android/stock/a/ag;Lcom/xueqiu/android/stock/model/OldPortFolio;Lcom/xueqiu/android/base/util/ar;)V

    goto/16 :goto_2

    .line 231
    :cond_18
    const/16 v0, 0x4b

    if-ne p1, v0, :cond_19

    .line 232
    const/16 v0, 0x4b

    invoke-static {v0, p2, p0, p5}, Lcom/xueqiu/android/stock/a/af;->a(ILcom/xueqiu/android/stock/a/ag;Lcom/xueqiu/android/stock/model/OldPortFolio;Lcom/xueqiu/android/base/util/ar;)V

    goto/16 :goto_2

    .line 233
    :cond_19
    const/16 v0, 0x4c

    if-ne p1, v0, :cond_1a

    .line 234
    const/16 v0, 0x4c

    invoke-static {v0, p2, p0, p5}, Lcom/xueqiu/android/stock/a/af;->a(ILcom/xueqiu/android/stock/a/ag;Lcom/xueqiu/android/stock/model/OldPortFolio;Lcom/xueqiu/android/base/util/ar;)V

    goto/16 :goto_2

    .line 235
    :cond_1a
    const/16 v0, 0x4d

    if-ne p1, v0, :cond_2

    .line 236
    const/16 v0, 0x4d

    invoke-static {v0, p2, p0, p5}, Lcom/xueqiu/android/stock/a/af;->a(ILcom/xueqiu/android/stock/a/ag;Lcom/xueqiu/android/stock/model/OldPortFolio;Lcom/xueqiu/android/base/util/ar;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    .line 61
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/af;->g:Landroid/view/LayoutInflater;

    const v1, 0x7f0301c6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 63
    invoke-static {p2}, Lcom/xueqiu/android/stock/a/ag;->a(Landroid/view/View;)Lcom/xueqiu/android/stock/a/ag;

    move-result-object v0

    .line 64
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 67
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/stock/a/ag;

    .line 68
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/stock/a/af;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/OldPortFolio;

    .line 70
    iget v1, p0, Lcom/xueqiu/android/stock/a/af;->i:I

    iget-object v3, p0, Lcom/xueqiu/android/stock/a/af;->e:Landroid/content/Context;

    iget-object v4, p0, Lcom/xueqiu/android/stock/a/af;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/xueqiu/android/stock/a/af;->h:Lcom/xueqiu/android/base/util/ar;

    invoke-static/range {v0 .. v5}, Lcom/xueqiu/android/stock/a/af;->a(Lcom/xueqiu/android/stock/model/OldPortFolio;ILcom/xueqiu/android/stock/a/ag;Landroid/content/Context;Ljava/lang/String;Lcom/xueqiu/android/base/util/ar;)V

    .line 72
    return-object p2
.end method
