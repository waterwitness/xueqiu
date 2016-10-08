.class public final Lcom/sleepycat/b/i/c;
.super Lcom/sleepycat/b/au;
.source "DatabasePreemptedException.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/sleepycat/b/i;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/b/i/c;)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/au;-><init>(Ljava/lang/String;Lcom/sleepycat/b/au;)V

    .line 83
    iget-object v0, p2, Lcom/sleepycat/b/i/c;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/sleepycat/b/i/c;->a:Ljava/lang/String;

    .line 84
    iget-object v0, p2, Lcom/sleepycat/b/i/c;->b:Lcom/sleepycat/b/i;

    iput-object v0, p0, Lcom/sleepycat/b/i/c;->b:Lcom/sleepycat/b/i;

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/b/i;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, p1, v1}, Lcom/sleepycat/b/au;-><init>(Lcom/sleepycat/b/n/q;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    iput-object p2, p0, Lcom/sleepycat/b/i/c;->a:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lcom/sleepycat/b/i/c;->b:Lcom/sleepycat/b/i;

    .line 74
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lcom/sleepycat/b/au;
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/sleepycat/b/i/c;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/b/i/c;-><init>(Ljava/lang/String;Lcom/sleepycat/b/i/c;)V

    return-object v0
.end method
