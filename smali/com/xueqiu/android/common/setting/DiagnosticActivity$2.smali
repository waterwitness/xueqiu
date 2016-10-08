.class final Lcom/xueqiu/android/common/setting/DiagnosticActivity$2;
.super Ljava/lang/Object;
.source "DiagnosticActivity.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/setting/DiagnosticActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/setting/DiagnosticActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/setting/DiagnosticActivity;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/xueqiu/android/common/setting/DiagnosticActivity$2;->a:Lcom/xueqiu/android/common/setting/DiagnosticActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 212
    check-cast p1, Ljava/lang/Throwable;

    .line 1215
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 1216
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/DiagnosticActivity$2;->a:Lcom/xueqiu/android/common/setting/DiagnosticActivity;

    iget-object v0, v0, Lcom/xueqiu/android/common/setting/DiagnosticActivity;->k:Lcom/xueqiu/android/common/widget/ac;

    if-eqz v0, :cond_0

    .line 1217
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/DiagnosticActivity$2;->a:Lcom/xueqiu/android/common/setting/DiagnosticActivity;

    iget-object v0, v0, Lcom/xueqiu/android/common/setting/DiagnosticActivity;->k:Lcom/xueqiu/android/common/widget/ac;

    .line 2167
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/a/h;->a(Z)V

    .line 212
    :cond_0
    return-void
.end method
