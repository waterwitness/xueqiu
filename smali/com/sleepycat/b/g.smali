.class public final Lcom/sleepycat/b/g;
.super Ljava/lang/Object;
.source "CursorConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final a:Lcom/sleepycat/b/g;

.field public static final b:Lcom/sleepycat/b/g;

.field public static final c:Lcom/sleepycat/b/g;


# instance fields
.field d:Z

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 20
    new-instance v0, Lcom/sleepycat/b/g;

    invoke-direct {v0}, Lcom/sleepycat/b/g;-><init>()V

    sput-object v0, Lcom/sleepycat/b/g;->a:Lcom/sleepycat/b/g;

    .line 26
    new-instance v0, Lcom/sleepycat/b/g;

    invoke-direct {v0}, Lcom/sleepycat/b/g;-><init>()V

    sput-object v0, Lcom/sleepycat/b/g;->b:Lcom/sleepycat/b/g;

    .line 36
    new-instance v0, Lcom/sleepycat/b/g;

    invoke-direct {v0}, Lcom/sleepycat/b/g;-><init>()V

    sput-object v0, Lcom/sleepycat/b/g;->c:Lcom/sleepycat/b/g;

    .line 39
    sget-object v0, Lcom/sleepycat/b/g;->b:Lcom/sleepycat/b/g;

    .line 1074
    iput-boolean v1, v0, Lcom/sleepycat/b/g;->d:Z

    .line 40
    sget-object v0, Lcom/sleepycat/b/g;->c:Lcom/sleepycat/b/g;

    .line 1114
    iput-boolean v1, v0, Lcom/sleepycat/b/g;->e:Z

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v0, p0, Lcom/sleepycat/b/g;->d:Z

    .line 44
    iput-boolean v0, p0, Lcom/sleepycat/b/g;->e:Z

    .line 51
    return-void
.end method

.method private a()Lcom/sleepycat/b/g;
    .locals 1

    .prologue
    .line 136
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/g;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/sleepycat/b/g;->a()Lcom/sleepycat/b/g;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "readUncommitted="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sleepycat/b/g;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nreadCommitted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/b/g;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
