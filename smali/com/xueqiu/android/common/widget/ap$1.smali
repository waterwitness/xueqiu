.class final Lcom/xueqiu/android/common/widget/ap$1;
.super Ljava/lang/Object;
.source "SingleDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/widget/ap;-><init>(Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/widget/ap;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/widget/ap;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/ap$1;->a:Lcom/xueqiu/android/common/widget/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ap$1;->a:Lcom/xueqiu/android/common/widget/ap;

    invoke-static {v0}, Lcom/xueqiu/android/common/widget/ap;->a(Lcom/xueqiu/android/common/widget/ap;)Lcom/xueqiu/android/common/widget/aq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ap$1;->a:Lcom/xueqiu/android/common/widget/ap;

    invoke-static {v0}, Lcom/xueqiu/android/common/widget/ap;->a(Lcom/xueqiu/android/common/widget/ap;)Lcom/xueqiu/android/common/widget/aq;

    move-result-object v0

    invoke-interface {v0}, Lcom/xueqiu/android/common/widget/aq;->a()V

    .line 36
    :cond_0
    return-void
.end method
