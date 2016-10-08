.class public final Lcom/sleepycat/b/c/v;
.super Ljava/lang/Object;
.source "DbTree.java"


# instance fields
.field public final a:Lcom/sleepycat/b/c/i;

.field public final b:Lcom/sleepycat/b/c/i;

.field public final c:J


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/c/i;)V
    .locals 2

    .prologue
    .line 1331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1332
    iput-object p1, p0, Lcom/sleepycat/b/c/v;->a:Lcom/sleepycat/b/c/i;

    .line 1333
    iput-object p2, p0, Lcom/sleepycat/b/c/v;->b:Lcom/sleepycat/b/c/i;

    .line 1334
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/b/c/v;->c:J

    .line 1335
    return-void
.end method
