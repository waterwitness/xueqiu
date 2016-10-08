.class final Lcom/xueqiu/android/base/b/ai$12;
.super Ljava/lang/Object;
.source "SnowBallClient.java"

# interfaces
.implements Lcom/android/volley/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/b/ai;->a(Lcom/xueqiu/android/base/b/x;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/b/x;

.field final synthetic b:Lcom/xueqiu/android/base/b/ai;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/b/ai;Lcom/xueqiu/android/base/b/x;)V
    .locals 0

    .prologue
    .line 2908
    iput-object p1, p0, Lcom/xueqiu/android/base/b/ai$12;->b:Lcom/xueqiu/android/base/b/ai;

    iput-object p2, p0, Lcom/xueqiu/android/base/b/ai$12;->a:Lcom/xueqiu/android/base/b/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/n;)Z
    .locals 1

    .prologue
    .line 2911
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ai$12;->a:Lcom/xueqiu/android/base/b/x;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2912
    const/4 v0, 0x1

    .line 2914
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
