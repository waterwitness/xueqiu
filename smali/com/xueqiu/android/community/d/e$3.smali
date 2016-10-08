.class final Lcom/xueqiu/android/community/d/e$3;
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/d/e;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/d/e;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/xueqiu/android/community/d/e$3;->a:Lcom/xueqiu/android/community/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/xueqiu/android/community/d/e$3;->a:Lcom/xueqiu/android/community/d/e;

    invoke-static {v0}, Lcom/xueqiu/android/community/d/e;->b(Lcom/xueqiu/android/community/d/e;)Lcom/xueqiu/android/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/b;->i()V

    .line 145
    return-void
.end method
