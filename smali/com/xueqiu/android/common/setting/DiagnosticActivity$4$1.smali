.class final Lcom/xueqiu/android/common/setting/DiagnosticActivity$4$1;
.super Ljava/lang/Object;
.source "DiagnosticActivity.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/setting/DiagnosticActivity$4;
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
.field final synthetic a:Lrx/i;

.field final synthetic b:Lcom/xueqiu/android/common/setting/DiagnosticActivity$4;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/setting/DiagnosticActivity$4;Lrx/i;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/xueqiu/android/common/setting/DiagnosticActivity$4$1;->b:Lcom/xueqiu/android/common/setting/DiagnosticActivity$4;

    iput-object p2, p0, Lcom/xueqiu/android/common/setting/DiagnosticActivity$4$1;->a:Lrx/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 184
    check-cast p1, Ljava/lang/String;

    .line 1187
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/DiagnosticActivity$4$1;->a:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 184
    return-void
.end method
