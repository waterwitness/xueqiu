.class public final Lcom/sleepycat/b/z;
.super Lcom/sleepycat/b/ac;
.source "EnvironmentConfig.java"


# static fields
.field public static final a:Lcom/sleepycat/b/z;


# instance fields
.field public transient b:Z

.field public transient c:Z

.field public d:Z

.field transient e:Z

.field public f:Ljava/lang/String;

.field public transient g:Ljava/util/logging/Handler;

.field public transient h:Lcom/sleepycat/b/ba;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/b/ba",
            "<",
            "Lcom/sleepycat/b/bb;",
            ">;"
        }
    .end annotation
.end field

.field public transient i:Ljava/lang/ClassLoader;

.field public transient j:Lcom/sleepycat/b/aw;

.field public k:Lcom/sleepycat/b/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 173
    new-instance v0, Lcom/sleepycat/b/z;

    invoke-direct {v0}, Lcom/sleepycat/b/z;-><init>()V

    sput-object v0, Lcom/sleepycat/b/z;->a:Lcom/sleepycat/b/z;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2906
    invoke-direct {p0}, Lcom/sleepycat/b/ac;-><init>()V

    .line 2871
    iput-boolean v1, p0, Lcom/sleepycat/b/z;->b:Z

    .line 2876
    iput-boolean v1, p0, Lcom/sleepycat/b/z;->c:Z

    .line 2878
    iput-boolean v0, p0, Lcom/sleepycat/b/z;->d:Z

    .line 2883
    iput-boolean v0, p0, Lcom/sleepycat/b/z;->e:Z

    .line 2885
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/z;->f:Ljava/lang/String;

    .line 2907
    return-void
.end method


# virtual methods
.method public final a(Z)Lcom/sleepycat/b/z;
    .locals 3

    .prologue
    .line 3110
    .line 4120
    iget-object v0, p0, Lcom/sleepycat/b/z;->o:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/b/b/d;->B:Lcom/sleepycat/b/b/a;

    iget-boolean v2, p0, Lcom/sleepycat/b/z;->q:Z

    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/b/c/m;->a(Ljava/util/Properties;Lcom/sleepycat/b/b/a;ZZ)V

    .line 3111
    return-object p0
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 3134
    iget-object v0, p0, Lcom/sleepycat/b/z;->o:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/b/b/d;->B:Lcom/sleepycat/b/b/a;

    invoke-static {v0, v1}, Lcom/sleepycat/b/c/m;->a(Ljava/util/Properties;Lcom/sleepycat/b/b/a;)Z

    move-result v0

    return v0
.end method

.method public final b()Lcom/sleepycat/b/z;
    .locals 4

    .prologue
    .line 3152
    .line 4162
    iget-object v0, p0, Lcom/sleepycat/b/z;->o:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/b/b/d;->z:Lcom/sleepycat/b/b/a;

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/sleepycat/b/z;->q:Z

    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/b/c/m;->a(Ljava/util/Properties;Lcom/sleepycat/b/b/a;ZZ)V

    .line 3153
    return-object p0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 3176
    iget-object v0, p0, Lcom/sleepycat/b/z;->o:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/b/b/d;->z:Lcom/sleepycat/b/b/a;

    invoke-static {v0, v1}, Lcom/sleepycat/b/c/m;->a(Ljava/util/Properties;Lcom/sleepycat/b/b/a;)Z

    move-result v0

    return v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 165
    .line 5651
    invoke-super {p0}, Lcom/sleepycat/b/ac;->h()Lcom/sleepycat/b/ac;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/z;

    .line 165
    return-object v0
.end method

.method public final d()Z
    .locals 2

    .prologue
    .line 3356
    iget-object v0, p0, Lcom/sleepycat/b/z;->o:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/b/b/d;->bk:Lcom/sleepycat/b/b/a;

    invoke-static {v0, v1}, Lcom/sleepycat/b/c/m;->a(Ljava/util/Properties;Lcom/sleepycat/b/b/a;)Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 4

    .prologue
    .line 3409
    iget-object v0, p0, Lcom/sleepycat/b/z;->o:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/b/b/d;->d:Lcom/sleepycat/b/b/a;

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/sleepycat/b/z;->q:Z

    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/b/c/m;->a(Ljava/util/Properties;Lcom/sleepycat/b/b/a;ZZ)V

    .line 3412
    return-void
.end method

.method public final f()Z
    .locals 2

    .prologue
    .line 3421
    iget-object v0, p0, Lcom/sleepycat/b/z;->o:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/b/b/d;->d:Lcom/sleepycat/b/b/a;

    invoke-static {v0, v1}, Lcom/sleepycat/b/c/m;->a(Ljava/util/Properties;Lcom/sleepycat/b/b/a;)Z

    move-result v0

    return v0
.end method

.method public final g()Lcom/sleepycat/b/z;
    .locals 1

    .prologue
    .line 3651
    invoke-super {p0}, Lcom/sleepycat/b/ac;->h()Lcom/sleepycat/b/ac;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/z;

    return-object v0
.end method

.method public final bridge synthetic h()Lcom/sleepycat/b/ac;
    .locals 1

    .prologue
    .line 165
    .line 4651
    invoke-super {p0}, Lcom/sleepycat/b/ac;->h()Lcom/sleepycat/b/ac;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/z;

    .line 165
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3659
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "allowCreate="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sleepycat/b/z;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/sleepycat/b/ac;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
