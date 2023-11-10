package supie.common.core.annotation;

import java.lang.annotation.*;

/**
 * 主要用于标记数据权限中基于DeptId进行过滤的字段。
 *
 * @author rm -rf .bug
 * @date 2020-11-12
 */
@Target({ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface DeptFilterColumn {

}
