.class final Lcom/xueqiu/android/common/setting/DiagnosticActivity$3;
.super Ljava/lang/Object;
.source "DiagnosticActivity.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/setting/DiagnosticActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/setting/DiagnosticActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/setting/DiagnosticActivity;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/xueqiu/android/common/setting/DiagnosticActivity$3;->a:Lcom/xueqiu/android/common/setting/DiagnosticActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/DiagnosticActivity$3;->a:Lcom/xueqiu/android/common/setting/DiagnosticActivity;

    iget-object v0, v0, Lcom/xueqiu/android/common/setting/DiagnosticActivity;->k:Lcom/xueqiu/android/common/widget/ac;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/DiagnosticActivity$3;->a:Lcom/xueqiu/android/common/setting/DiagnosticActivity;

    iget-object v0, v0, Lcom/xueqiu/android/common/setting/DiagnosticActivity;->k:Lcom/xueqiu/android/common/widget/ac;

    .line 1167
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/a/h;->a(Z)V

    .line 227
    :cond_0
    return-void
.end method
