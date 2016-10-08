.class public abstract Lcom/sleepycat/b/l/r;
.super Lcom/sleepycat/b/l/k;
.source "INTargetRep.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/b/l/k",
        "<",
        "Lcom/sleepycat/b/l/r;",
        "Lcom/sleepycat/b/l/v;",
        "Lcom/sleepycat/b/l/ac;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/sleepycat/b/l/t;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/sleepycat/b/l/t;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sleepycat/b/l/t;-><init>(B)V

    sput-object v0, Lcom/sleepycat/b/l/r;->a:Lcom/sleepycat/b/l/t;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/sleepycat/b/l/k;-><init>()V

    .line 38
    return-void
.end method
