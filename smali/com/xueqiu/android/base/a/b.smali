.class public Lcom/xueqiu/android/base/a/b;
.super Lcom/android/volley/y;
.source "SnowBallException.java"


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/volley/y;-><init>(Ljava/lang/String;)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/base/a/b;->b:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/volley/y;-><init>(Ljava/lang/String;)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/base/a/b;->b:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/xueqiu/android/base/a/b;->b:Ljava/lang/String;

    .line 27
    return-void
.end method
