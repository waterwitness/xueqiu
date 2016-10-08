.class public Lcom/xiaomi/b/a/a/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lorg/apache/a/b",
        "<",
        "Lcom/xiaomi/b/a/a/a/e;",
        "Lcom/xiaomi/b/a/a/a/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/xiaomi/b/a/a/a/f;",
            "Lorg/apache/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lorg/apache/a/b/m;

.field private static final f:Lorg/apache/a/b/e;

.field private static final g:Lorg/apache/a/b/e;

.field private static final h:Lorg/apache/a/b/e;

.field private static final i:Lorg/apache/a/b/e;


# instance fields
.field public a:Lcom/xiaomi/b/a/a/a;

.field public b:Ljava/lang/String;

.field public c:Lcom/xiaomi/b/a/a/a/c;

.field private j:Lcom/xiaomi/b/a/a/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v8, 0xb

    const/16 v3, 0xc

    const/4 v7, 0x2

    const/4 v6, 0x1

    new-instance v0, Lorg/apache/a/b/m;

    const-string v1, "HttpLog"

    invoke-direct {v0, v1}, Lorg/apache/a/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/b/a/a/a/e;->e:Lorg/apache/a/b/m;

    new-instance v0, Lorg/apache/a/b/e;

    const-string v1, "common"

    invoke-direct {v0, v1, v3, v6}, Lorg/apache/a/b/e;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/b/a/a/a/e;->f:Lorg/apache/a/b/e;

    new-instance v0, Lorg/apache/a/b/e;

    const-string v1, "category"

    invoke-direct {v0, v1, v8, v7}, Lorg/apache/a/b/e;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/b/a/a/a/e;->g:Lorg/apache/a/b/e;

    new-instance v0, Lorg/apache/a/b/e;

    const-string v1, "httpApi"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/a/b/e;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/b/a/a/a/e;->h:Lorg/apache/a/b/e;

    new-instance v0, Lorg/apache/a/b/e;

    const-string v1, "passport"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/a/b/e;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/b/a/a/a/e;->i:Lorg/apache/a/b/e;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/b/a/a/a/f;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/xiaomi/b/a/a/a/f;->a:Lcom/xiaomi/b/a/a/a/f;

    new-instance v2, Lorg/apache/a/a/b;

    const-string v3, "common"

    new-instance v4, Lorg/apache/a/a/g;

    const-class v5, Lcom/xiaomi/b/a/a/a;

    invoke-direct {v4, v5}, Lorg/apache/a/a/g;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/a/a/b;-><init>(Ljava/lang/String;BLorg/apache/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/b/a/a/a/f;->b:Lcom/xiaomi/b/a/a/a/f;

    new-instance v2, Lorg/apache/a/a/b;

    const-string v3, "category"

    new-instance v4, Lorg/apache/a/a/c;

    invoke-direct {v4, v8}, Lorg/apache/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/a/a/b;-><init>(Ljava/lang/String;BLorg/apache/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/b/a/a/a/f;->c:Lcom/xiaomi/b/a/a/a/f;

    new-instance v2, Lorg/apache/a/a/b;

    const-string v3, "httpApi"

    new-instance v4, Lorg/apache/a/a/g;

    const-class v5, Lcom/xiaomi/b/a/a/a/c;

    invoke-direct {v4, v5}, Lorg/apache/a/a/g;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/a/a/b;-><init>(Ljava/lang/String;BLorg/apache/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/b/a/a/a/f;->d:Lcom/xiaomi/b/a/a/a/f;

    new-instance v2, Lorg/apache/a/a/b;

    const-string v3, "passport"

    new-instance v4, Lorg/apache/a/a/g;

    const-class v5, Lcom/xiaomi/b/a/a/a/k;

    invoke-direct {v4, v5}, Lorg/apache/a/a/g;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/a/a/b;-><init>(Ljava/lang/String;BLorg/apache/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/b/a/a/a/e;->d:Ljava/util/Map;

    const-class v0, Lcom/xiaomi/b/a/a/a/e;

    sget-object v1, Lcom/xiaomi/b/a/a/a/e;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/b/a/a/a/e;->b:Ljava/lang/String;

    return-void
.end method

.method private a()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/e;->a:Lcom/xiaomi/b/a/a/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/e;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/e;->c:Lcom/xiaomi/b/a/a/a/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/e;->j:Lcom/xiaomi/b/a/a/a/k;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/e;->a:Lcom/xiaomi/b/a/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'common\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/b/a/a/a/e;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lorg/apache/a/b/i;-><init>(Ljava/lang/String;B)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/e;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'category\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/b/a/a/a/e;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lorg/apache/a/b/i;-><init>(Ljava/lang/String;B)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lorg/apache/a/b/h;)V
    .locals 4

    const/16 v3, 0xc

    invoke-virtual {p1}, Lorg/apache/a/b/h;->d()Lorg/apache/a/b/m;

    :goto_0
    invoke-virtual {p1}, Lorg/apache/a/b/h;->f()Lorg/apache/a/b/e;

    move-result-object v0

    iget-byte v1, v0, Lorg/apache/a/b/e;->b:B

    if-eqz v1, :cond_4

    iget-short v1, v0, Lorg/apache/a/b/e;->c:S

    packed-switch v1, :pswitch_data_0

    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto :goto_0

    :pswitch_0
    iget-byte v1, v0, Lorg/apache/a/b/e;->b:B

    if-ne v1, v3, :cond_0

    new-instance v0, Lcom/xiaomi/b/a/a/a;

    invoke-direct {v0}, Lcom/xiaomi/b/a/a/a;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/b/a/a/a/e;->a:Lcom/xiaomi/b/a/a/a;

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/e;->a:Lcom/xiaomi/b/a/a/a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/b/a/a/a;->a(Lorg/apache/a/b/h;)V

    goto :goto_0

    :cond_0
    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto :goto_0

    :pswitch_1
    iget-byte v1, v0, Lorg/apache/a/b/e;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lorg/apache/a/b/h;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/b/a/a/a/e;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto :goto_0

    :pswitch_2
    iget-byte v1, v0, Lorg/apache/a/b/e;->b:B

    if-ne v1, v3, :cond_2

    new-instance v0, Lcom/xiaomi/b/a/a/a/c;

    invoke-direct {v0}, Lcom/xiaomi/b/a/a/a/c;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/b/a/a/a/e;->c:Lcom/xiaomi/b/a/a/a/c;

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/e;->c:Lcom/xiaomi/b/a/a/a/c;

    invoke-virtual {v0, p1}, Lcom/xiaomi/b/a/a/a/c;->a(Lorg/apache/a/b/h;)V

    goto :goto_0

    :cond_2
    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto :goto_0

    :pswitch_3
    iget-byte v1, v0, Lorg/apache/a/b/e;->b:B

    if-ne v1, v3, :cond_3

    new-instance v0, Lcom/xiaomi/b/a/a/a/k;

    invoke-direct {v0}, Lcom/xiaomi/b/a/a/a/k;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/b/a/a/a/e;->j:Lcom/xiaomi/b/a/a/a/k;

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/e;->j:Lcom/xiaomi/b/a/a/a/k;

    invoke-virtual {v0, p1}, Lcom/xiaomi/b/a/a/a/k;->a(Lorg/apache/a/b/h;)V

    goto :goto_0

    :cond_3
    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lorg/apache/a/b/h;->e()V

    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/e;->e()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final b(Lorg/apache/a/b/h;)V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/e;->e()V

    invoke-virtual {p1}, Lorg/apache/a/b/h;->a()V

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/e;->a:Lcom/xiaomi/b/a/a/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/b/a/a/a/e;->f:Lorg/apache/a/b/e;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Lorg/apache/a/b/e;)V

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/e;->a:Lcom/xiaomi/b/a/a/a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/b/a/a/a;->b(Lorg/apache/a/b/h;)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/e;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/b/a/a/a/e;->g:Lorg/apache/a/b/e;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Lorg/apache/a/b/e;)V

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/e;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/e;->c:Lcom/xiaomi/b/a/a/a/c;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/e;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/xiaomi/b/a/a/a/e;->h:Lorg/apache/a/b/e;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Lorg/apache/a/b/e;)V

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/e;->c:Lcom/xiaomi/b/a/a/a/c;

    invoke-virtual {v0, p1}, Lcom/xiaomi/b/a/a/a/c;->b(Lorg/apache/a/b/h;)V

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/e;->j:Lcom/xiaomi/b/a/a/a/k;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/e;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/xiaomi/b/a/a/a/e;->i:Lorg/apache/a/b/e;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Lorg/apache/a/b/e;)V

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/e;->j:Lcom/xiaomi/b/a/a/a/k;

    invoke-virtual {v0, p1}, Lcom/xiaomi/b/a/a/a/k;->b(Lorg/apache/a/b/h;)V

    :cond_3
    invoke-virtual {p1}, Lorg/apache/a/b/h;->c()V

    invoke-virtual {p1}, Lorg/apache/a/b/h;->b()V

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 0
    check-cast p1, Lcom/xiaomi/b/a/a/a/e;

    .line 2000
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/e;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/xiaomi/b/a/a/a/e;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/e;->a:Lcom/xiaomi/b/a/a/a;

    iget-object v1, p1, Lcom/xiaomi/b/a/a/a/e;->a:Lcom/xiaomi/b/a/a/a;

    invoke-static {v0, v1}, Lorg/apache/a/c;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/e;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/xiaomi/b/a/a/a/e;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/e;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/e;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/b/a/a/a/e;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/a/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/e;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/xiaomi/b/a/a/a/e;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/e;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/e;->c:Lcom/xiaomi/b/a/a/a/c;

    iget-object v1, p1, Lcom/xiaomi/b/a/a/a/e;->c:Lcom/xiaomi/b/a/a/a/c;

    invoke-static {v0, v1}, Lorg/apache/a/c;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/e;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/xiaomi/b/a/a/a/e;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/e;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/e;->j:Lcom/xiaomi/b/a/a/a/k;

    iget-object v1, p1, Lcom/xiaomi/b/a/a/a/e;->j:Lcom/xiaomi/b/a/a/a/k;

    invoke-static {v0, v1}, Lorg/apache/a/c;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    const/4 v0, 0x0

    .line 0
    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 0
    if-nez p1, :cond_1

    .line 1000
    :cond_0
    :goto_0
    return v0

    .line 0
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/b/a/a/a/e;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/xiaomi/b/a/a/a/e;

    .line 1000
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/e;->a()Z

    move-result v1

    invoke-direct {p1}, Lcom/xiaomi/b/a/a/a/e;->a()Z

    move-result v2

    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/b/a/a/a/e;->a:Lcom/xiaomi/b/a/a/a;

    iget-object v2, p1, Lcom/xiaomi/b/a/a/a/e;->a:Lcom/xiaomi/b/a/a/a;

    invoke-virtual {v1, v2}, Lcom/xiaomi/b/a/a/a;->a(Lcom/xiaomi/b/a/a/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/e;->b()Z

    move-result v1

    invoke-direct {p1}, Lcom/xiaomi/b/a/a/a/e;->b()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/b/a/a/a/e;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/b/a/a/a/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/e;->c()Z

    move-result v1

    invoke-direct {p1}, Lcom/xiaomi/b/a/a/a/e;->c()Z

    move-result v2

    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/b/a/a/a/e;->c:Lcom/xiaomi/b/a/a/a/c;

    iget-object v2, p1, Lcom/xiaomi/b/a/a/a/e;->c:Lcom/xiaomi/b/a/a/a/c;

    invoke-virtual {v1, v2}, Lcom/xiaomi/b/a/a/a/c;->a(Lcom/xiaomi/b/a/a/a/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_7
    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/e;->d()Z

    move-result v1

    invoke-direct {p1}, Lcom/xiaomi/b/a/a/a/e;->d()Z

    move-result v2

    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/b/a/a/a/e;->j:Lcom/xiaomi/b/a/a/a/k;

    iget-object v2, p1, Lcom/xiaomi/b/a/a/a/e;->j:Lcom/xiaomi/b/a/a/a/k;

    invoke-virtual {v1, v2}, Lcom/xiaomi/b/a/a/a/k;->a(Lcom/xiaomi/b/a/a/a/k;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_9
    const/4 v0, 0x1

    .line 0
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HttpLog("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "common:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/b/a/a/a/e;->a:Lcom/xiaomi/b/a/a/a;

    if-nez v1, :cond_2

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "category:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/b/a/a/a/e;->b:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/e;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "httpApi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/b/a/a/a/e;->c:Lcom/xiaomi/b/a/a/a/c;

    if-nez v1, :cond_4

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_2
    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/e;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "passport:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/b/a/a/a/e;->j:Lcom/xiaomi/b/a/a/a/k;

    if-nez v1, :cond_5

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_3
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/b/a/a/a/e;->a:Lcom/xiaomi/b/a/a/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/xiaomi/b/a/a/a/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/xiaomi/b/a/a/a/e;->c:Lcom/xiaomi/b/a/a/a/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/xiaomi/b/a/a/a/e;->j:Lcom/xiaomi/b/a/a/a/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method
