.class final Lcom/xueqiu/android/community/d/e$4;
.super Ljava/lang/Object;
.source "UserProfilePresenter.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/d/e;
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
.field final synthetic a:Lcom/xueqiu/android/community/d/e;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/d/e;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/xueqiu/android/community/d/e$4;->a:Lcom/xueqiu/android/community/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 146
    check-cast p1, Ljava/lang/Throwable;

    .line 1149
    iget-object v0, p0, Lcom/xueqiu/android/community/d/e$4;->a:Lcom/xueqiu/android/community/d/e;

    invoke-static {v0}, Lcom/xueqiu/android/community/d/e;->b(Lcom/xueqiu/android/community/d/e;)Lcom/xueqiu/android/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/b;->i()V

    .line 1150
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 146
    return-void
.end method
