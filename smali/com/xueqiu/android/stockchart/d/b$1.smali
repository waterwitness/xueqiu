.class final Lcom/xueqiu/android/stockchart/d/b$1;
.super Ljava/lang/Object;
.source "BigChartFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stockchart/d/b;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stockchart/d/b;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stockchart/d/b;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/d/b$1;->a:Lcom/xueqiu/android/stockchart/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b$1;->a:Lcom/xueqiu/android/stockchart/d/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/d/b;->g()Landroid/support/v4/a/k;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/a/k;->setRequestedOrientation(I)V

    .line 95
    return-void
.end method
