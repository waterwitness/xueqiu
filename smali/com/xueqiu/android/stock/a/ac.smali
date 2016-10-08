.class public abstract Lcom/xueqiu/android/stock/a/ac;
.super Lcom/xueqiu/android/stock/a/a;
.source "SampleTableAdapter.java"


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/xueqiu/android/stock/a/a;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/xueqiu/android/stock/a/ac;->b:Landroid/content/Context;

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/a/ac;->a:Landroid/view/LayoutInflater;

    .line 27
    return-void
.end method


# virtual methods
.method public final a(IILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/ac;->a:Landroid/view/LayoutInflater;

    invoke-virtual {p0, p1, p2}, Lcom/xueqiu/android/stock/a/ac;->b(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 54
    invoke-virtual {p0, v0, p1, p2}, Lcom/xueqiu/android/stock/a/ac;->b(Landroid/view/View;II)V

    .line 55
    invoke-virtual {p0, v0, p1, p2}, Lcom/xueqiu/android/stock/a/ac;->a(Landroid/view/View;II)V

    .line 56
    return-object v0
.end method

.method public abstract a(II)Ljava/lang/String;
.end method

.method public final a(IILandroid/view/View;)V
    .locals 0

    .prologue
    .line 61
    invoke-virtual {p0, p3, p1, p2}, Lcom/xueqiu/android/stock/a/ac;->a(Landroid/view/View;II)V

    .line 62
    invoke-virtual {p0, p3, p1, p2}, Lcom/xueqiu/android/stock/a/ac;->b(Landroid/view/View;II)V

    .line 63
    return-void
.end method

.method public abstract a(Landroid/view/View;II)V
.end method

.method public abstract b(II)I
.end method

.method public b(Landroid/view/View;II)V
    .locals 2

    .prologue
    .line 73
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, p2, p3}, Lcom/xueqiu/android/stock/a/ac;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    return-void
.end method
