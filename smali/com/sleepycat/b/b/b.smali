.class public Lcom/sleepycat/b/b/b;
.super Ljava/lang/Object;
.source "ConfigParam.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-nez p1, :cond_1

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/b/b;->a:Ljava/lang/String;

    .line 55
    :goto_0
    iput-object p2, p0, Lcom/sleepycat/b/b/b;->b:Ljava/lang/String;

    .line 56
    iput-boolean p3, p0, Lcom/sleepycat/b/b/b;->c:Z

    .line 57
    iput-boolean p4, p0, Lcom/sleepycat/b/b/b;->d:Z

    .line 60
    iget-object v0, p0, Lcom/sleepycat/b/b/b;->a:Ljava/lang/String;

    .line 1119
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1120
    :cond_0
    const-string v0, "A configuration parameter name can\'t be null or 0 length"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 45
    :cond_1
    const-string v0, ".#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 46
    if-gez v0, :cond_2

    .line 47
    iput-object p1, p0, Lcom/sleepycat/b/b/b;->a:Ljava/lang/String;

    .line 48
    iput-boolean v1, p0, Lcom/sleepycat/b/b/b;->e:Z

    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/b/b;->a:Ljava/lang/String;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/b/b;->e:Z

    goto :goto_0

    .line 61
    :cond_3
    invoke-virtual {p0, p2}, Lcom/sleepycat/b/b/b;->a(Ljava/lang/String;)V

    .line 64
    invoke-static {p0}, Lcom/sleepycat/b/b/d;->a(Lcom/sleepycat/b/b/b;)V

    .line 65
    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 73
    if-gez v0, :cond_0

    .line 74
    const/4 v0, 0x0

    .line 76
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/sleepycat/b/b/b;->a:Ljava/lang/String;

    return-object v0
.end method
