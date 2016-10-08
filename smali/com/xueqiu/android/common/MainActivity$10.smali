.class final Lcom/xueqiu/android/common/MainActivity$10;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/MainActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/MainActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/MainActivity;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/xueqiu/android/common/MainActivity$10;->a:Lcom/xueqiu/android/common/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTabChanged(Ljava/lang/String;)V
    .locals 5

    .prologue
    const v4, 0x7f0e034c

    const/16 v3, 0x3e8

    .line 249
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/common/MainActivity$10;->a:Lcom/xueqiu/android/common/MainActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/MainActivity;->d(Lcom/xueqiu/android/common/MainActivity;)Lcom/xueqiu/android/common/widget/SnowBallTabHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SnowBallTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/xueqiu/android/common/MainActivity$10;->a:Lcom/xueqiu/android/common/MainActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/MainActivity;->d(Lcom/xueqiu/android/common/MainActivity;)Lcom/xueqiu/android/common/widget/SnowBallTabHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SnowBallTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 251
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/xueqiu/android/common/MainActivity$10;->a:Lcom/xueqiu/android/common/MainActivity;

    invoke-static {v2}, Lcom/xueqiu/android/common/MainActivity;->e(Lcom/xueqiu/android/common/MainActivity;)Lcom/xueqiu/android/common/k;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/xueqiu/android/common/k;->a(Ljava/lang/String;)Lcom/xueqiu/android/common/l;

    move-result-object v2

    .line 1780
    iget v2, v2, Lcom/xueqiu/android/common/l;->c:I

    .line 251
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 249
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/MainActivity$10;->a:Lcom/xueqiu/android/common/MainActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/MainActivity;->d(Lcom/xueqiu/android/common/MainActivity;)Lcom/xueqiu/android/common/widget/SnowBallTabHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SnowBallTabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/common/MainActivity$10;->a:Lcom/xueqiu/android/common/MainActivity;

    invoke-static {v1}, Lcom/xueqiu/android/common/MainActivity;->e(Lcom/xueqiu/android/common/MainActivity;)Lcom/xueqiu/android/common/k;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xueqiu/android/common/k;->a(Ljava/lang/String;)Lcom/xueqiu/android/common/l;

    move-result-object v1

    .line 1784
    iget v1, v1, Lcom/xueqiu/android/common/l;->d:I

    .line 253
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 254
    iget-object v0, p0, Lcom/xueqiu/android/common/MainActivity$10;->a:Lcom/xueqiu/android/common/MainActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/common/MainActivity;->a(Lcom/xueqiu/android/common/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 255
    const-string v0, "portfolio_tag"

    iget-object v1, p0, Lcom/xueqiu/android/common/MainActivity$10;->a:Lcom/xueqiu/android/common/MainActivity;

    invoke-static {v1}, Lcom/xueqiu/android/common/MainActivity;->f(Lcom/xueqiu/android/common/MainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 256
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/4 v2, 0x2

    invoke-direct {v1, v3, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 266
    :cond_1
    :goto_1
    return-void

    .line 257
    :cond_2
    const-string v0, "trends_tag"

    iget-object v1, p0, Lcom/xueqiu/android/common/MainActivity$10;->a:Lcom/xueqiu/android/common/MainActivity;

    invoke-static {v1}, Lcom/xueqiu/android/common/MainActivity;->f(Lcom/xueqiu/android/common/MainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 258
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/4 v2, 0x3

    invoke-direct {v1, v3, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto :goto_1

    .line 259
    :cond_3
    const-string v0, "public_timeline_tag"

    iget-object v1, p0, Lcom/xueqiu/android/common/MainActivity$10;->a:Lcom/xueqiu/android/common/MainActivity;

    invoke-static {v1}, Lcom/xueqiu/android/common/MainActivity;->f(Lcom/xueqiu/android/common/MainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 260
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v3, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto :goto_1

    .line 261
    :cond_4
    const-string v0, "quotes_center_tag"

    iget-object v1, p0, Lcom/xueqiu/android/common/MainActivity$10;->a:Lcom/xueqiu/android/common/MainActivity;

    invoke-static {v1}, Lcom/xueqiu/android/common/MainActivity;->f(Lcom/xueqiu/android/common/MainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 262
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x10

    invoke-direct {v1, v3, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto :goto_1

    .line 263
    :cond_5
    const-string v0, "trade_tag"

    iget-object v1, p0, Lcom/xueqiu/android/common/MainActivity$10;->a:Lcom/xueqiu/android/common/MainActivity;

    invoke-static {v1}, Lcom/xueqiu/android/common/MainActivity;->f(Lcom/xueqiu/android/common/MainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 264
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/4 v2, 0x5

    invoke-direct {v1, v3, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto :goto_1
.end method
