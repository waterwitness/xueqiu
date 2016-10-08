.class final Lcom/xueqiu/android/community/d/b$1;
.super Lcom/xueqiu/android/base/b/p;
.source "ReplierProfilePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/d/b;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/community/model/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/d/b;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/d/b;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/xueqiu/android/community/d/b$1;->a:Lcom/xueqiu/android/community/d/b;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 40
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 41
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 37
    check-cast p1, Lcom/xueqiu/android/community/model/User;

    .line 1045
    iget-object v0, p0, Lcom/xueqiu/android/community/d/b$1;->a:Lcom/xueqiu/android/community/d/b;

    invoke-static {v0, p1}, Lcom/xueqiu/android/community/d/b;->a(Lcom/xueqiu/android/community/d/b;Lcom/xueqiu/android/community/model/User;)V

    .line 37
    return-void
.end method
