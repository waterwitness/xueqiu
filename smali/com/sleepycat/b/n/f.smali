.class public final Lcom/sleepycat/b/n/f;
.super Ljava/lang/Object;
.source "LockAttemptResult.java"


# instance fields
.field public final a:Z

.field final b:Lcom/sleepycat/b/n/e;

.field public final c:Lcom/sleepycat/b/n/h;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/n/e;Lcom/sleepycat/b/n/h;Z)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/sleepycat/b/n/f;->b:Lcom/sleepycat/b/n/e;

    .line 23
    iput-object p2, p0, Lcom/sleepycat/b/n/f;->c:Lcom/sleepycat/b/n/h;

    .line 24
    iput-boolean p3, p0, Lcom/sleepycat/b/n/f;->a:Z

    .line 25
    return-void
.end method
