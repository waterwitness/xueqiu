.class public final Lcom/sleepycat/b/l/ad;
.super Ljava/lang/Exception;
.source "NodeNotEmptyException.java"


# static fields
.field public static final a:Lcom/sleepycat/b/l/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/sleepycat/b/l/ad;

    invoke-direct {v0}, Lcom/sleepycat/b/l/ad;-><init>()V

    sput-object v0, Lcom/sleepycat/b/l/ad;->a:Lcom/sleepycat/b/l/ad;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 27
    return-void
.end method
