.class final Lcom/xueqiu/android/trade/c/e$12;
.super Ljava/lang/Object;
.source "OrderFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/c/e;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/e;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/e;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/e$12;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$12;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->d(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/b/b;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e$12;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/e;->c(Lcom/xueqiu/android/trade/c/e;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/b;->d(Ljava/lang/String;)V

    .line 307
    return-void
.end method
