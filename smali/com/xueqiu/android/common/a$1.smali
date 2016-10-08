.class final Lcom/xueqiu/android/common/a$1;
.super Ljava/lang/Object;
.source "AboutUsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/a;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/a;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/xueqiu/android/common/a$1;->a:Lcom/xueqiu/android/common/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 78
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/common/a$1;->a:Lcom/xueqiu/android/common/a;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/a;->g()Landroid/support/v4/a/k;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/common/setting/DiagnosticActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    iget-object v1, p0, Lcom/xueqiu/android/common/a$1;->a:Lcom/xueqiu/android/common/a;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/a;->a(Landroid/content/Intent;)V

    .line 80
    return-void
.end method
