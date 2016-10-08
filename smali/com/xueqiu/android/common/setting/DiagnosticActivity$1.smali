.class final Lcom/xueqiu/android/common/setting/DiagnosticActivity$1;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/setting/DiagnosticActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/setting/DiagnosticActivity;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/xueqiu/android/common/setting/DiagnosticActivity$1;->a:Lcom/xueqiu/android/common/setting/DiagnosticActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 206
    check-cast p1, Ljava/lang/String;

    .line 1209
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/DiagnosticActivity$1;->a:Lcom/xueqiu/android/common/setting/DiagnosticActivity;

    iget-object v0, v0, Lcom/xueqiu/android/common/setting/DiagnosticActivity;->j:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 206
    return-void
.end method
