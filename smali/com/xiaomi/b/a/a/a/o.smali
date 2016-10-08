.class public Lcom/xiaomi/b/a/a/a/o;
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
        "Lcom/xiaomi/b/a/a/a/o;",
        "Lcom/xiaomi/b/a/a/a/p;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/xiaomi/b/a/a/a/p;",
            "Lorg/apache/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lorg/apache/a/b/m;

.field private static final c:Lorg/apache/a/b/e;

.field private static final d:Lorg/apache/a/b/e;

.field private static final e:Lorg/apache/a/b/e;


# instance fields
.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x1

    const/16 v5, 0x8

    new-instance v0, Lorg/apache/a/b/m;

    const-string v1, "PassportLandNodeInfo"

    invoke-direct {v0, v1}, Lorg/apache/a/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/b/a/a/a/o;->b:Lorg/apache/a/b/m;

    new-instance v0, Lorg/apache/a/b/e;

    const-string v1, "ip"

    invoke-direct {v0, v1, v5, v6}, Lorg/apache/a/b/e;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/b/a/a/a/o;->c:Lorg/apache/a/b/e;

    new-instance v0, Lorg/apache/a/b/e;

    const-string v1, "eid"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/a/b/e;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/b/a/a/a/o;->d:Lorg/apache/a/b/e;

    new-instance v0, Lorg/apache/a/b/e;

    const-string v1, "rt"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/a/b/e;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/b/a/a/a/o;->e:Lorg/apache/a/b/e;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/b/a/a/a/p;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/xiaomi/b/a/a/a/p;->a:Lcom/xiaomi/b/a/a/a/p;

    new-instance v2, Lorg/apache/a/a/b;

    const-string v3, "ip"

    new-instance v4, Lorg/apache/a/a/c;

    invoke-direct {v4, v5}, Lorg/apache/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/a/a/b;-><init>(Ljava/lang/String;BLorg/apache/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/b/a/a/a/p;->b:Lcom/xiaomi/b/a/a/a/p;

    new-instance v2, Lorg/apache/a/a/b;

    const-string v3, "eid"

    new-instance v4, Lorg/apache/a/a/c;

    invoke-direct {v4, v5}, Lorg/apache/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/a/a/b;-><init>(Ljava/lang/String;BLorg/apache/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/b/a/a/a/p;->c:Lcom/xiaomi/b/a/a/a/p;

    new-instance v2, Lorg/apache/a/a/b;

    const-string v3, "rt"

    new-instance v4, Lorg/apache/a/a/c;

    invoke-direct {v4, v5}, Lorg/apache/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/a/a/b;-><init>(Ljava/lang/String;BLorg/apache/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/b/a/a/a/o;->a:Ljava/util/Map;

    const-class v0, Lcom/xiaomi/b/a/a/a/o;

    sget-object v1, Lcom/xiaomi/b/a/a/a/o;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/b/a/a/a/o;->i:Ljava/util/BitSet;

    return-void
.end method

.method private a()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/o;->i:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method private b()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/o;->i:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method private c()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/o;->i:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Lorg/apache/a/b/h;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 0
    invoke-virtual {p1}, Lorg/apache/a/b/h;->d()Lorg/apache/a/b/m;

    :goto_0
    invoke-virtual {p1}, Lorg/apache/a/b/h;->f()Lorg/apache/a/b/e;

    move-result-object v0

    iget-byte v1, v0, Lorg/apache/a/b/e;->b:B

    if-eqz v1, :cond_3

    iget-short v1, v0, Lorg/apache/a/b/e;->c:S

    packed-switch v1, :pswitch_data_0

    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto :goto_0

    :pswitch_0
    iget-byte v1, v0, Lorg/apache/a/b/e;->b:B

    if-ne v1, v4, :cond_0

    invoke-virtual {p1}, Lorg/apache/a/b/h;->m()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/b/a/a/a/o;->f:I

    .line 2000
    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/o;->i:Ljava/util/BitSet;

    invoke-virtual {v0, v3, v2}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0

    .line 0
    :cond_0
    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto :goto_0

    :pswitch_1
    iget-byte v1, v0, Lorg/apache/a/b/e;->b:B

    if-ne v1, v4, :cond_1

    invoke-virtual {p1}, Lorg/apache/a/b/h;->m()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/b/a/a/a/o;->g:I

    .line 3000
    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/o;->i:Ljava/util/BitSet;

    invoke-virtual {v0, v2, v2}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0

    .line 0
    :cond_1
    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto :goto_0

    :pswitch_2
    iget-byte v1, v0, Lorg/apache/a/b/e;->b:B

    if-ne v1, v4, :cond_2

    invoke-virtual {p1}, Lorg/apache/a/b/h;->m()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/b/a/a/a/o;->h:I

    .line 4000
    iget-object v0, p0, Lcom/xiaomi/b/a/a/a/o;->i:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0

    .line 0
    :cond_2
    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lorg/apache/a/b/h;->e()V

    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/o;->a()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lorg/apache/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'ip\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/b/a/a/a/o;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lorg/apache/a/b/i;-><init>(Ljava/lang/String;B)V

    throw v0

    :cond_4
    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/o;->b()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lorg/apache/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'eid\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/b/a/a/a/o;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lorg/apache/a/b/i;-><init>(Ljava/lang/String;B)V

    throw v0

    :cond_5
    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/o;->c()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lorg/apache/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'rt\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/b/a/a/a/o;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lorg/apache/a/b/i;-><init>(Ljava/lang/String;B)V

    throw v0

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final b(Lorg/apache/a/b/h;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/a/b/h;->a()V

    sget-object v0, Lcom/xiaomi/b/a/a/a/o;->c:Lorg/apache/a/b/e;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Lorg/apache/a/b/e;)V

    iget v0, p0, Lcom/xiaomi/b/a/a/a/o;->f:I

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(I)V

    sget-object v0, Lcom/xiaomi/b/a/a/a/o;->d:Lorg/apache/a/b/e;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Lorg/apache/a/b/e;)V

    iget v0, p0, Lcom/xiaomi/b/a/a/a/o;->g:I

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(I)V

    sget-object v0, Lcom/xiaomi/b/a/a/a/o;->e:Lorg/apache/a/b/e;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Lorg/apache/a/b/e;)V

    iget v0, p0, Lcom/xiaomi/b/a/a/a/o;->h:I

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(I)V

    invoke-virtual {p1}, Lorg/apache/a/b/h;->c()V

    invoke-virtual {p1}, Lorg/apache/a/b/h;->b()V

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 0
    check-cast p1, Lcom/xiaomi/b/a/a/a/o;

    .line 5000
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
    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/o;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/xiaomi/b/a/a/a/o;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/o;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/xiaomi/b/a/a/a/o;->f:I

    iget v1, p1, Lcom/xiaomi/b/a/a/a/o;->f:I

    invoke-static {v0, v1}, Lorg/apache/a/c;->a(II)I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/o;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/xiaomi/b/a/a/a/o;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/o;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/xiaomi/b/a/a/a/o;->g:I

    iget v1, p1, Lcom/xiaomi/b/a/a/a/o;->g:I

    invoke-static {v0, v1}, Lorg/apache/a/c;->a(II)I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/o;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/xiaomi/b/a/a/a/o;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a/o;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/xiaomi/b/a/a/a/o;->h:I

    iget v1, p1, Lcom/xiaomi/b/a/a/a/o;->h:I

    invoke-static {v0, v1}, Lorg/apache/a/c;->a(II)I

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    const/4 v0, 0x0

    .line 0
    goto :goto_0
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
    instance-of v1, p1, Lcom/xiaomi/b/a/a/a/o;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/xiaomi/b/a/a/a/o;

    .line 1000
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/xiaomi/b/a/a/a/o;->f:I

    iget v2, p1, Lcom/xiaomi/b/a/a/a/o;->f:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/xiaomi/b/a/a/a/o;->g:I

    iget v2, p1, Lcom/xiaomi/b/a/a/a/o;->g:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/xiaomi/b/a/a/a/o;->h:I

    iget v2, p1, Lcom/xiaomi/b/a/a/a/o;->h:I

    if-ne v1, v2, :cond_0

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

    const-string v1, "PassportLandNodeInfo("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "ip:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/b/a/a/a/o;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "eid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/b/a/a/a/o;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "rt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/b/a/a/a/o;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
