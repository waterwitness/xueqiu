.class final Lcom/xueqiu/android/base/b/ai$13;
.super Lcom/xueqiu/android/base/b/p;
.source "SnowBallClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/b/ai;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/xueqiu/android/base/b/ai;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/b/ai;Z)V
    .locals 0

    .prologue
    .line 3001
    iput-object p1, p0, Lcom/xueqiu/android/base/b/ai$13;->b:Lcom/xueqiu/android/base/b/ai;

    iput-boolean p2, p0, Lcom/xueqiu/android/base/b/ai$13;->a:Z

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 3004
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 3001
    .line 4009
    const-string v1, "app state changed"

    iget-boolean v0, p0, Lcom/xueqiu/android/base/b/ai$13;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "on"

    :goto_0
    invoke-static {v1, v0}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3001
    return-void

    .line 4009
    :cond_0
    const-string v0, "off"

    goto :goto_0
.end method
