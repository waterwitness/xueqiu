.class final Lcom/xueqiu/android/common/widget/z$1;
.super Ljava/lang/Object;
.source "PrivateAgreementDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/widget/z;-><init>(Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/widget/z;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/widget/z;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/z$1;->a:Lcom/xueqiu/android/common/widget/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/z$1;->a:Lcom/xueqiu/android/common/widget/z;

    invoke-static {v0}, Lcom/xueqiu/android/common/widget/z;->a(Lcom/xueqiu/android/common/widget/z;)Lcom/xueqiu/android/common/widget/aa;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/z$1;->a:Lcom/xueqiu/android/common/widget/z;

    invoke-static {v0}, Lcom/xueqiu/android/common/widget/z;->a(Lcom/xueqiu/android/common/widget/z;)Lcom/xueqiu/android/common/widget/aa;

    move-result-object v0

    invoke-interface {v0}, Lcom/xueqiu/android/common/widget/aa;->a()V

    .line 56
    :cond_0
    return-void
.end method
