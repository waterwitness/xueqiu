.class public abstract Lcom/sleepycat/b/bm;
.super Lcom/sleepycat/b/au;
.source "SecondaryReferenceException.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/sleepycat/b/m;

.field private final c:Lcom/sleepycat/b/m;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/n/q;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V
    .locals 2

    .prologue
    .line 44
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/sleepycat/b/au;-><init>(Lcom/sleepycat/b/n/q;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    iput-object p3, p0, Lcom/sleepycat/b/bm;->a:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/sleepycat/b/bm;->b:Lcom/sleepycat/b/m;

    .line 47
    iput-object p5, p0, Lcom/sleepycat/b/bm;->c:Lcom/sleepycat/b/m;

    .line 48
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/sleepycat/b/bm;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/au;-><init>(Ljava/lang/String;Lcom/sleepycat/b/au;)V

    .line 57
    iget-object v0, p2, Lcom/sleepycat/b/bm;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/sleepycat/b/bm;->a:Ljava/lang/String;

    .line 58
    iget-object v0, p2, Lcom/sleepycat/b/bm;->b:Lcom/sleepycat/b/m;

    iput-object v0, p0, Lcom/sleepycat/b/bm;->b:Lcom/sleepycat/b/m;

    .line 59
    iget-object v0, p2, Lcom/sleepycat/b/bm;->c:Lcom/sleepycat/b/m;

    iput-object v0, p0, Lcom/sleepycat/b/bm;->c:Lcom/sleepycat/b/m;

    .line 60
    return-void
.end method
