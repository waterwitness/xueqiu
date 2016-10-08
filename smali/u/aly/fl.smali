.class final Lu/aly/fl;
.super Lu/aly/gl;
.source "TUnion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/gl",
        "<",
        "Lu/aly/fi;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0}, Lu/aly/gl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0}, Lu/aly/fl;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/ga;Lu/aly/fa;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1
    check-cast p2, Lu/aly/fi;

    .line 1264
    iput-object v0, p2, Lu/aly/fi;->c:Lu/aly/fg;

    .line 1265
    iput-object v0, p2, Lu/aly/fi;->b:Ljava/lang/Object;

    .line 1266
    invoke-virtual {p1}, Lu/aly/ga;->l()S

    move-result v0

    .line 1267
    invoke-virtual {p2, p1, v0}, Lu/aly/fi;->a(Lu/aly/ga;S)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p2, Lu/aly/fi;->b:Ljava/lang/Object;

    .line 1268
    iget-object v1, p2, Lu/aly/fi;->b:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1269
    invoke-virtual {p2, v0}, Lu/aly/fi;->a(S)Lu/aly/fg;

    move-result-object v0

    iput-object v0, p2, Lu/aly/fi;->c:Lu/aly/fg;

    .line 1
    :cond_0
    return-void
.end method

.method public final synthetic b(Lu/aly/ga;Lu/aly/fa;)V
    .locals 2

    .prologue
    .line 1
    check-cast p2, Lu/aly/fi;

    .line 1275
    invoke-virtual {p2}, Lu/aly/fi;->b()Lu/aly/fg;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lu/aly/fi;->c()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1276
    :cond_0
    new-instance v0, Lu/aly/gb;

    const-string v1, "Cannot write a TUnion with no set value!"

    invoke-direct {v0, v1}, Lu/aly/gb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1278
    :cond_1
    iget-object v0, p2, Lu/aly/fi;->c:Lu/aly/fg;

    invoke-interface {v0}, Lu/aly/fg;->a()S

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/ga;->a(S)V

    .line 1279
    invoke-virtual {p2, p1}, Lu/aly/fi;->d(Lu/aly/ga;)V

    .line 1
    return-void
.end method
