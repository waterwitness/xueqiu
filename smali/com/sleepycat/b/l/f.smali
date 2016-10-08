.class public final Lcom/sleepycat/b/l/f;
.super Ljava/lang/Exception;
.source "CursorsExistException.java"


# static fields
.field public static final a:Lcom/sleepycat/b/l/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/sleepycat/b/l/f;

    invoke-direct {v0}, Lcom/sleepycat/b/l/f;-><init>()V

    sput-object v0, Lcom/sleepycat/b/l/f;->a:Lcom/sleepycat/b/l/f;

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
