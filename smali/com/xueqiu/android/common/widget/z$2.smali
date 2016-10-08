.class final Lcom/xueqiu/android/common/widget/z$2;
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
    .line 58
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/z$2;->a:Lcom/xueqiu/android/common/widget/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/z$2;->a:Lcom/xueqiu/android/common/widget/z;

    invoke-static {v0}, Lcom/xueqiu/android/common/widget/z;->a(Lcom/xueqiu/android/common/widget/z;)Lcom/xueqiu/android/common/widget/aa;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/z$2;->a:Lcom/xueqiu/android/common/widget/z;

    invoke-static {v0}, Lcom/xueqiu/android/common/widget/z;->a(Lcom/xueqiu/android/common/widget/z;)Lcom/xueqiu/android/common/widget/aa;

    move-result-object v0

    invoke-interface {v0}, Lcom/xueqiu/android/common/widget/aa;->b()V

    .line 64
    :cond_0
    return-void
.end method
