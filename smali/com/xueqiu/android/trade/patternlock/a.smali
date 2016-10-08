.class public Lcom/xueqiu/android/trade/patternlock/a;
.super Landroid/support/v4/a/i;
.source "BasePatternFragment.java"


# instance fields
.field protected a:Landroid/widget/TextView;

.field protected b:Lcom/xueqiu/android/trade/patternlock/PatternView;

.field private c:Landroid/view/View;

.field private final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v4/a/i;-><init>()V

    .line 27
    new-instance v0, Lcom/xueqiu/android/trade/patternlock/a$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/trade/patternlock/a$1;-><init>(Lcom/xueqiu/android/trade/patternlock/a;)V

    iput-object v0, p0, Lcom/xueqiu/android/trade/patternlock/a;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 41
    const v0, 0x7f030155

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/patternlock/a;->c:Landroid/view/View;

    .line 43
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/a;->c:Landroid/view/View;

    const v1, 0x7f0e0529

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/patternlock/a;->a:Landroid/widget/TextView;

    .line 44
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/a;->c:Landroid/view/View;

    const v1, 0x7f0e052a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/patternlock/PatternView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/patternlock/a;->b:Lcom/xueqiu/android/trade/patternlock/PatternView;

    .line 46
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/a;->c:Landroid/view/View;

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/support/v4/a/i;->a(Landroid/os/Bundle;)V

    .line 37
    return-void
.end method

.method protected final b()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/a;->b:Lcom/xueqiu/android/trade/patternlock/PatternView;

    iget-object v1, p0, Lcom/xueqiu/android/trade/patternlock/a;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/patternlock/PatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 51
    return-void
.end method

.method protected final u()V
    .locals 4

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/patternlock/a;->b()V

    .line 55
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/a;->b:Lcom/xueqiu/android/trade/patternlock/PatternView;

    iget-object v1, p0, Lcom/xueqiu/android/trade/patternlock/a;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/trade/patternlock/PatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    return-void
.end method
