.class public final Lcom/sleepycat/b/i/n;
.super Ljava/lang/Object;
.source "NoConsistencyRequiredPolicy.java"

# interfaces
.implements Lcom/sleepycat/b/bc;


# static fields
.field public static final a:Lcom/sleepycat/b/i/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/sleepycat/b/i/n;

    invoke-direct {v0}, Lcom/sleepycat/b/i/n;-><init>()V

    sput-object v0, Lcom/sleepycat/b/i/n;->a:Lcom/sleepycat/b/i/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/TimeUnit;)J
    .locals 2

    .prologue
    .line 93
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final a(Lcom/sleepycat/b/c/ad;)V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 77
    if-ne p0, p1, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v0

    .line 80
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 81
    goto :goto_0

    .line 83
    :cond_2
    instance-of v2, p1, Lcom/sleepycat/b/i/n;

    if-nez v2, :cond_0

    move v0, v1

    .line 84
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 70
    const/16 v0, 0x1f

    return v0
.end method
