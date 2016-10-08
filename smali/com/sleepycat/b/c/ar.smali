.class public abstract Lcom/sleepycat/b/c/ar;
.super Ljava/lang/Object;
.source "MemoryBudget.java"


# instance fields
.field public a:J

.field public b:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 1312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1313
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/b/c/ar;->a:J

    .line 1314
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 1307
    invoke-direct {p0}, Lcom/sleepycat/b/c/ar;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()J
.end method

.method abstract a(J)Z
.end method

.method abstract b()Z
.end method
