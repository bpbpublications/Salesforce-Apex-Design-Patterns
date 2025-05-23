public class DynamicQuery {
    private String objectName;
    private List<String> selectedFields;
    private List<String> filters;

    private DynamicQuery(QueryBuilder builder) {
        this.objectName = builder.objectName;
        this.selectedFields = builder.selectedFields;
        this.filters = builder.filters;
    }

    public static class QueryBuilder {
        private String objectName;
        private List<String> selectedFields;
        private List<String> filters;

        public QueryBuilder(String objectName) {
            this.objectName = objectName;
            this.selectedFields = new List<String>();
            this.filters = new List<String>();
        }

        public QueryBuilder selectFields(List<String> fields) {
            this.selectedFields.addAll(fields);
            return this;
        }

        public QueryBuilder addFilter(String filter) {
            this.filters.add(filter);
            return this;
        }

        public DynamicQuery build() {
            return new DynamicQuery(this);
        }
    }

    public String generateQuery() {
        String fields = String.join(selectedFields, ', ');
        String whereClause = filters.isEmpty() ? '' : ' WHERE ' + String.join(filters, ' AND ');
        return 'SELECT ' + fields + ' FROM ' + objectName + whereClause;
    }
}