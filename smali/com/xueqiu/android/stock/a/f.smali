.class public final Lcom/xueqiu/android/stock/a/f;
.super Lcom/xueqiu/android/common/a/d;
.source "HgtAhStockRankListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/a/d",
        "<",
        "Lcom/xueqiu/android/stock/model/AHStockQuote;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Landroid/content/Context;

.field private f:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/a/d;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/stock/a/f;->e:Landroid/content/Context;

    .line 35
    iput-object p1, p0, Lcom/xueqiu/android/stock/a/f;->e:Landroid/content/Context;

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/a/f;->f:Landroid/view/LayoutInflater;

    .line 37
    return-void
.end method

.method private static a(DDLandroid/widget/TextView;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 70
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 71
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "%.2f%n"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 72
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 73
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v3, "%.2f%%"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 74
    const-wide/16 v4, 0x0

    cmpl-double v3, p2, v4

    if-lez v3, :cond_0

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "+"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    :cond_0
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 78
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v3, 0xb

    invoke-direct {v0, v3, v6}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 79
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x11

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 80
    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    return-void
.end method

.method public static a(Lcom/xueqiu/android/stock/model/AHStockQuote;Lcom/xueqiu/android/stock/a/g;)V
    .locals 10

    .prologue
    .line 56
    invoke-static {}, Lcom/xueqiu/android/base/util/ar;->a()Lcom/xueqiu/android/base/util/ar;

    move-result-object v0

    .line 58
    iget-object v1, p1, Lcom/xueqiu/android/stock/a/g;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/AHStockQuote;->getNameHk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/AHStockQuote;->getCurrentHkHkd()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/AHStockQuote;->getPercentHk()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget-object v1, p1, Lcom/xueqiu/android/stock/a/g;->b:Landroid/widget/TextView;

    invoke-static {v2, v3, v4, v5, v1}, Lcom/xueqiu/android/stock/a/f;->a(DDLandroid/widget/TextView;)V

    .line 61
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/AHStockQuote;->getCurrentCn()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/AHStockQuote;->getPercentCn()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget-object v1, p1, Lcom/xueqiu/android/stock/a/g;->c:Landroid/widget/TextView;

    invoke-static {v2, v3, v4, v5, v1}, Lcom/xueqiu/android/stock/a/f;->a(DDLandroid/widget/TextView;)V

    .line 63
    iget-object v1, p1, Lcom/xueqiu/android/stock/a/g;->d:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v3, "%.2f%%"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/AHStockQuote;->getPriceRatio()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v1, p1, Lcom/xueqiu/android/stock/a/g;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/AHStockQuote;->getPercentHk()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/base/util/ar;->a(D)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    iget-object v1, p1, Lcom/xueqiu/android/stock/a/g;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/AHStockQuote;->getPercentCn()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/base/util/ar;->a(D)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 42
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/f;->f:Landroid/view/LayoutInflater;

    const v1, 0x7f0301c0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 44
    invoke-static {p2}, Lcom/xueqiu/android/stock/a/g;->a(Landroid/view/View;)Lcom/xueqiu/android/stock/a/g;

    move-result-object v0

    .line 45
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 48
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/a/g;

    .line 49
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/stock/a/f;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/stock/model/AHStockQuote;

    .line 50
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/a/f;->a(Lcom/xueqiu/android/stock/model/AHStockQuote;Lcom/xueqiu/android/stock/a/g;)V

    .line 51
    return-object p2
.end method
