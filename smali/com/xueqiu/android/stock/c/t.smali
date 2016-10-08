.class public final Lcom/xueqiu/android/stock/c/t;
.super Lcom/xueqiu/android/common/c;
.source "QuoteFragment.java"

# interfaces
.implements Lcom/xueqiu/android/stockchart/c/b;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation


# instance fields
.field public a:Lcom/xueqiu/android/stock/model/StockQuote;

.field ak:Landroid/widget/TextView;

.field al:Landroid/widget/TextView;

.field public am:Lcom/xueqiu/android/stockchart/b/a;

.field public an:Lcom/xueqiu/android/stockchart/a/b;

.field private ao:Landroid/webkit/WebView;

.field private ap:D

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field c:Lcom/xueqiu/android/base/util/ar;

.field public d:Lcom/xueqiu/android/stockchart/d/c;

.field public e:Lcom/xueqiu/android/stockchart/d/b;

.field public f:Lcom/xueqiu/android/stockchart/e/h;

.field g:I

.field h:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 68
    iput-object v0, p0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    .line 70
    iput-object v0, p0, Lcom/xueqiu/android/stock/c/t;->b:Ljava/util/List;

    .line 72
    iput-object v0, p0, Lcom/xueqiu/android/stock/c/t;->c:Lcom/xueqiu/android/base/util/ar;

    .line 74
    iput-object v0, p0, Lcom/xueqiu/android/stock/c/t;->ao:Landroid/webkit/WebView;

    .line 728
    new-instance v0, Lcom/xueqiu/android/stock/c/t$8;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/stock/c/t$8;-><init>(Lcom/xueqiu/android/stock/c/t;)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/t;->am:Lcom/xueqiu/android/stockchart/b/a;

    .line 782
    new-instance v0, Lcom/xueqiu/android/stock/c/t$9;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/stock/c/t$9;-><init>(Lcom/xueqiu/android/stock/c/t;)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/t;->an:Lcom/xueqiu/android/stockchart/a/b;

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/c/t;)Lcom/xueqiu/android/stockchart/d/c;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/t;->d:Lcom/xueqiu/android/stockchart/d/c;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/stock/c/t;)Lcom/xueqiu/android/stockchart/d/b;
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/t;->e:Lcom/xueqiu/android/stockchart/d/b;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/stock/c/t;)Lcom/xueqiu/android/stock/model/StockQuote;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/stock/c/t;)I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/xueqiu/android/stock/c/t;->g:I

    return v0
.end method


# virtual methods
.method final C()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 601
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getUpdateTime()Ljava/util/Calendar;

    move-result-object v0

    if-nez v0, :cond_1

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 604
    :cond_1
    const v0, 0x7f0e0059

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/t;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 605
    if-eqz v0, :cond_0

    .line 608
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getUpdateTime()Ljava/util/Calendar;

    move-result-object v2

    .line 610
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 611
    const-string v1, "MM-dd HH:mm:ss"

    .line 616
    :goto_1
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v3, v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 619
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/xueqiu/android/base/util/as;->c(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 620
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v4, 0x7f070408

    invoke-virtual {p0, v4}, Lcom/xueqiu/android/stock/c/t;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 625
    :goto_2
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 626
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 613
    :cond_2
    const-string v1, "yyyy-MM-dd HH:mm:ss"

    goto :goto_1

    .line 622
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v4, 0x7f070407

    invoke-virtual {p0, v4}, Lcom/xueqiu/android/stock/c/t;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    .line 108
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/c;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 109
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/t;->e_(Z)V

    .line 111
    const v0, 0x7f0301a4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 114
    const v0, 0x7f0e0606

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 115
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/t;->f()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xueqiu/android/base/util/ay;->d(Landroid/content/Context;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    const v0, 0x7f0e05f9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/t;->h:Landroid/widget/TextView;

    .line 118
    const v0, 0x7f0e05fb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/t;->ak:Landroid/widget/TextView;

    .line 119
    const v0, 0x7f0e05fc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/t;->al:Landroid/widget/TextView;

    .line 120
    return-object v1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->a(Landroid/os/Bundle;)V

    .line 1564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 98
    if-eqz v0, :cond_0

    .line 2564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 99
    const-string v1, "extra_portfolio"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/StockQuote;

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    .line 102
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/util/ar;->a()Lcom/xueqiu/android/base/util/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/t;->c:Lcom/xueqiu/android/base/util/ar;

    .line 103
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 177
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 3220
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/t;->i()Landroid/support/v4/a/q;

    move-result-object v0

    const-string v1, "small_chart_fragment_tag"

    invoke-virtual {v0, v1}, Landroid/support/v4/a/q;->a(Ljava/lang/String;)Landroid/support/v4/a/i;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stockchart/d/c;

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/t;->d:Lcom/xueqiu/android/stockchart/d/c;

    .line 3221
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/t;->d:Lcom/xueqiu/android/stockchart/d/c;

    if-nez v0, :cond_0

    .line 3222
    new-instance v0, Lcom/xueqiu/android/stockchart/d/c;

    invoke-direct {v0}, Lcom/xueqiu/android/stockchart/d/c;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/t;->d:Lcom/xueqiu/android/stockchart/d/c;

    .line 3223
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/t;->d:Lcom/xueqiu/android/stockchart/d/c;

    iput-object p0, v0, Lcom/xueqiu/android/stockchart/d/c;->e:Lcom/xueqiu/android/stockchart/c/b;

    .line 3224
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/t;->d:Lcom/xueqiu/android/stockchart/d/c;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/d/c;->a(Ljava/lang/String;)V

    .line 3225
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/t;->d:Lcom/xueqiu/android/stockchart/d/c;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/t;->g()Landroid/support/v4/a/k;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/StockDetailActivity;

    iput-object v0, v1, Lcom/xueqiu/android/stockchart/d/c;->c:Lcom/xueqiu/android/stockchart/a/c;

    .line 3226
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/t;->d:Lcom/xueqiu/android/stockchart/d/c;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/t;->g()Landroid/support/v4/a/k;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/StockDetailActivity;

    iput-object v0, v1, Lcom/xueqiu/android/stockchart/d/c;->d:Lcom/xueqiu/android/stockchart/a/a;

    .line 3227
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/t;->d:Lcom/xueqiu/android/stockchart/d/c;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/t;->am:Lcom/xueqiu/android/stockchart/b/a;

    iput-object v1, v0, Lcom/xueqiu/android/stockchart/d/c;->al:Lcom/xueqiu/android/stockchart/b/a;

    .line 3228
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/t;->d:Lcom/xueqiu/android/stockchart/d/c;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/t;->an:Lcom/xueqiu/android/stockchart/a/b;

    iput-object v1, v0, Lcom/xueqiu/android/stockchart/d/c;->am:Lcom/xueqiu/android/stockchart/a/b;

    .line 3230
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/t;->i()Landroid/support/v4/a/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v1

    .line 3231
    const v0, 0x7f0e0606

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/t;->d:Lcom/xueqiu/android/stockchart/d/c;

    const-string v3, "small_chart_fragment_tag"

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v4/a/ac;->a(ILandroid/support/v4/a/i;Ljava/lang/String;)Landroid/support/v4/a/ac;

    .line 3232
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/t;->g()Landroid/support/v4/a/k;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/b;

    .line 3275
    iget-boolean v0, v0, Lcom/xueqiu/android/common/b;->n:Z

    .line 3232
    if-eqz v0, :cond_0

    .line 3233
    invoke-virtual {v1}, Landroid/support/v4/a/ac;->d()I

    .line 182
    :cond_0
    const v0, 0x7f0e05fd

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/t;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 183
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/t;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/stock/c/t$2;

    invoke-direct {v3, p0, v0}, Lcom/xueqiu/android/stock/c/t$2;-><init>(Lcom/xueqiu/android/stock/c/t;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 203
    new-instance v1, Lcom/xueqiu/android/stock/c/t$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/t$3;-><init>(Lcom/xueqiu/android/stock/c/t;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/stockchart/c/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xueqiu/android/stockchart/c/a",
            "<",
            "Lcom/google/gson/JsonElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 677
    new-instance v0, Lcom/xueqiu/android/stock/c/t$6;

    invoke-direct {v0, p0, p0, p4}, Lcom/xueqiu/android/stock/c/t$6;-><init>(Lcom/xueqiu/android/stock/c/t;Lcom/xueqiu/android/base/b/q;Lcom/xueqiu/android/stockchart/c/a;)V

    .line 694
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/t;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 695
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/stockchart/c/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xueqiu/android/stockchart/c/a",
            "<",
            "Lcom/google/gson/JsonElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 699
    new-instance v0, Lcom/xueqiu/android/stock/c/t$7;

    invoke-direct {v0, p0, p0, p4}, Lcom/xueqiu/android/stock/c/t$7;-><init>(Lcom/xueqiu/android/stock/c/t;Lcom/xueqiu/android/base/b/q;Lcom/xueqiu/android/stockchart/c/a;)V

    .line 716
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/t;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/xueqiu/android/base/b/ai;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 717
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 652
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/t;->ao:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/t;->ao:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/t;->ao:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/t;->ao:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 654
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/t;->ao:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 655
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/t;->ao:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 656
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/t;->ao:Landroid/webkit/WebView;

    .line 658
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->e()V

    .line 659
    return-void
.end method

.method final u()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    const-wide/16 v10, 0x0

    .line 356
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getCurrent()D

    move-result-wide v2

    .line 357
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/t;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getTickSize()D

    move-result-wide v4

    invoke-static {v4, v5, v2, v3}, Lcom/xueqiu/android/base/util/as;->a(DD)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getChange()D

    move-result-wide v4

    .line 360
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/t;->c:Lcom/xueqiu/android/base/util/ar;

    invoke-virtual {v0, v4, v5}, Lcom/xueqiu/android/base/util/ar;->a(D)I

    move-result v0

    .line 361
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/t;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 362
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/t;->ak:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 363
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/t;->al:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 365
    const-string v0, ""

    .line 366
    cmpl-double v1, v4, v10

    if-lez v1, :cond_0

    .line 367
    const-string v0, "+"

    .line 369
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/t;->ak:Landroid/widget/TextView;

    const-string v6, "%s%s"

    new-array v7, v14, [Ljava/lang/Object;

    aput-object v0, v7, v12

    iget-object v8, p0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v8}, Lcom/xueqiu/android/stock/model/StockQuote;->getTickSize()D

    move-result-wide v8

    invoke-static {v8, v9, v4, v5}, Lcom/xueqiu/android/base/util/as;->a(DD)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v13

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/t;->al:Landroid/widget/TextView;

    const-string v4, "%s%.2f%%"

    new-array v5, v14, [Ljava/lang/Object;

    aput-object v0, v5, v12

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getPercentage()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v5, v13

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-wide v0, p0, Lcom/xueqiu/android/stock/c/t;->ap:D

    cmpl-double v0, v0, v10

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/xueqiu/android/stock/c/t;->ap:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    .line 373
    const v0, 0x7f0e05f8

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/t;->c(I)Landroid/view/View;

    move-result-object v0

    .line 374
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/t;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    .line 375
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/t;->c:Lcom/xueqiu/android/base/util/ar;

    iget-wide v4, p0, Lcom/xueqiu/android/stock/c/t;->ap:D

    sub-double v4, v2, v4

    invoke-virtual {v1, v4, v5}, Lcom/xueqiu/android/base/util/ar;->a(D)I

    move-result v1

    .line 377
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3331
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 3332
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 3333
    const-wide/16 v4, 0x190

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 3334
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 3335
    new-instance v4, Lcom/xueqiu/android/stock/c/t$4;

    invoke-direct {v4, p0, v0}, Lcom/xueqiu/android/stock/c/t$4;-><init>(Lcom/xueqiu/android/stock/c/t;Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3352
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 380
    :cond_1
    iput-wide v2, p0, Lcom/xueqiu/android/stock/c/t;->ap:D

    .line 381
    return-void
.end method
