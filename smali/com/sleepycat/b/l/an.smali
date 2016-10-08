.class public abstract Lcom/sleepycat/b/l/an;
.super Ljava/lang/Object;
.source "VLSNCache.java"


# static fields
.field public static a:Lcom/sleepycat/b/l/an;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/sleepycat/b/l/an$1;

    invoke-direct {v0}, Lcom/sleepycat/b/l/an$1;-><init>()V

    sput-object v0, Lcom/sleepycat/b/l/an;->a:Lcom/sleepycat/b/l/an;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method


# virtual methods
.method public abstract a()J
.end method

.method public abstract a(I)J
.end method

.method public abstract a(III)Lcom/sleepycat/b/l/an;
.end method

.method public abstract a(IJLcom/sleepycat/b/l/j;)Lcom/sleepycat/b/l/an;
.end method
